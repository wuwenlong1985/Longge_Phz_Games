$ErrorActionPreference = 'Stop'

$ProjectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$ToolsRoot = if ($env:PHZ_TOOLS_ROOT) { [System.IO.Path]::GetFullPath($env:PHZ_TOOLS_ROOT) } else { 'D:\Tools\rea-android-pipihuzi-6CDD785D' }
$Apktool = if ($env:APKTOOL_PATH) { [System.IO.Path]::GetFullPath($env:APKTOOL_PATH) } else { Join-Path $ToolsRoot 'apktool.bat' }
$ApktoolJar = if ($env:APKTOOL_JAR) { [System.IO.Path]::GetFullPath($env:APKTOOL_JAR) } else { Join-Path $ToolsRoot 'apktool_2.12.1.jar' }
if (-not (Test-Path -LiteralPath $Apktool)) {
    $ApktoolCommand = Get-Command apktool.bat,apktool -ErrorAction SilentlyContinue | Select-Object -First 1
    if ($ApktoolCommand) { $Apktool = $ApktoolCommand.Source }
}

$JavaHome = if ($env:JAVA_HOME) { [System.IO.Path]::GetFullPath($env:JAVA_HOME) } else { Join-Path $ToolsRoot 'jdk\jdk-21.0.13+9' }
$Java = Join-Path $JavaHome 'bin\java.exe'
if (-not (Test-Path -LiteralPath $Java)) {
    $JavaCommand = Get-Command java.exe -ErrorAction Stop
    $Java = $JavaCommand.Source
    $JavaHome = Split-Path -Parent (Split-Path -Parent $Java)
}
$env:JAVA_HOME = $JavaHome
$env:Path = (Join-Path $JavaHome 'bin') + ';' + $env:Path
$BuildTools = $env:ANDROID_BUILD_TOOLS
if (-not $BuildTools) {
    $AndroidSdk = if ($env:ANDROID_SDK_ROOT) { $env:ANDROID_SDK_ROOT } elseif ($env:ANDROID_HOME) { $env:ANDROID_HOME } else { Join-Path $env:LOCALAPPDATA 'Android\Sdk' }
    $BuildTools = Get-ChildItem -LiteralPath (Join-Path $AndroidSdk 'build-tools') -Directory -ErrorAction SilentlyContinue |
        Sort-Object { try { [version]$_.Name } catch { [version]'0.0' } } -Descending |
        Select-Object -First 1 -ExpandProperty FullName
}
if (-not $BuildTools) { throw 'Android Build Tools not found. Set ANDROID_SDK_ROOT or ANDROID_BUILD_TOOLS.' }
$Zipalign = Join-Path $BuildTools 'zipalign.exe'
$ApkSigner = Join-Path $BuildTools 'apksigner.bat'
$Keytool = Join-Path $JavaHome 'bin\keytool.exe'
$SourceProject = Join-Path $ProjectRoot 'apktool-project'
$Dist = if ([string]::IsNullOrWhiteSpace($env:PHZ_BUILD_OUTPUT_DIR)) {
    Join-Path $ProjectRoot 'dist'
} else {
    [System.IO.Path]::GetFullPath($env:PHZ_BUILD_OUTPUT_DIR)
}
$KeyStore = Join-Path $ProjectRoot 'signing\longge-brand.keystore'
$TempRoot = if ($env:PHZ_BUILD_TEMP) { [System.IO.Path]::GetFullPath($env:PHZ_BUILD_TEMP) } else { [System.IO.Path]::GetTempPath() }
if (-not (Test-Path -LiteralPath $TempRoot)) { New-Item -ItemType Directory -Path $TempRoot -Force | Out-Null }
$env:TEMP = $TempRoot
$env:TMP = $TempRoot

foreach ($required in @($Zipalign, $ApkSigner, (Join-Path $SourceProject 'apktool.yml'))) {
    if (-not (Test-Path -LiteralPath $required)) { throw "Required build input is missing: $required" }
}
if (-not (Test-Path -LiteralPath $Apktool) -and -not (Test-Path -LiteralPath $ApktoolJar)) {
    throw "Apktool launcher and pinned Apktool jar are both missing under $ToolsRoot"
}
if (-not (Test-Path -LiteralPath $Dist)) { New-Item -ItemType Directory -Path $Dist | Out-Null }
if (-not (Test-Path -LiteralPath $KeyStore)) {
    if (-not (Test-Path -LiteralPath $Keytool)) { throw "Keytool is required to create the missing signing key: $Keytool" }
    & $Keytool -genkeypair -keystore $KeyStore -storetype PKCS12 -storepass android -alias longge-key -keypass android -dname 'CN=Longge Huzi Local Debug,O=Longge,C=CN' -keyalg RSA -keysize 2048 -validity 10000
    if ($LASTEXITCODE -ne 0) { throw "Could not create the local debug signing key (exit $LASTEXITCODE)" }
}

$BuildId = Get-Date -Format 'yyyyMMdd-HHmmss'
$Unsigned = Join-Path $Dist "longge-run-huzi-$BuildId-unsigned.apk"
$Aligned = Join-Path $Dist "longge-run-huzi-$BuildId-aligned.apk"
$Signed = Join-Path $Dist "longge-run-huzi-$BuildId.apk"
$BuildLog = Join-Path $Dist "longge-run-huzi-$BuildId-build.log"
$VerifyLog = Join-Path $Dist "longge-run-huzi-$BuildId-signature.txt"

if (Test-Path -LiteralPath $Apktool) {
    & $Apktool b $SourceProject -o $Unsigned 2>&1 | Tee-Object -FilePath $BuildLog
} else {
    & $Java -jar $ApktoolJar b $SourceProject -o $Unsigned 2>&1 | Tee-Object -FilePath $BuildLog
}
if ($LASTEXITCODE -ne 0) { throw "Apktool build failed; see $BuildLog" }

& $Zipalign -f -p 4 $Unsigned $Aligned
if ($LASTEXITCODE -ne 0) { throw "zipalign failed with exit code $LASTEXITCODE" }

& $ApkSigner sign --ks $KeyStore --ks-key-alias longge-key --ks-pass pass:android --key-pass pass:android --v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled true --out $Signed $Aligned
if ($LASTEXITCODE -ne 0) { throw "apksigner sign failed with exit code $LASTEXITCODE" }

& $ApkSigner verify --verbose --print-certs $Signed 2>&1 | Tee-Object -FilePath $VerifyLog
if ($LASTEXITCODE -ne 0) { throw "apksigner verify failed; see $VerifyLog" }

$sha = (Get-FileHash -Algorithm SHA256 -LiteralPath $Signed).Hash.ToLowerInvariant()
[pscustomobject]@{
    SignedApk = $Signed
    Sha256 = $sha
    Bytes = (Get-Item -LiteralPath $Signed).Length
    KeyStore = $KeyStore
    BuildLog = $BuildLog
    SignatureVerification = $VerifyLog
}

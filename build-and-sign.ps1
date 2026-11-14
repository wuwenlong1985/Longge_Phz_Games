$ErrorActionPreference = 'Stop'

$ProjectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$ToolsRoot = 'D:\Tools\rea-android-pipihuzi-6CDD785D'
$Apktool = Join-Path $ToolsRoot 'apktool.bat'
$ApktoolJar = Join-Path $ToolsRoot 'apktool_2.12.1.jar'
$JavaHome = Join-Path $ToolsRoot 'jdk\jdk-21.0.13+9'
$Java = Join-Path $JavaHome 'bin\java.exe'
if (-not (Test-Path -LiteralPath $Java)) {
    $Java21 = Get-ChildItem -LiteralPath 'C:\Program Files\Eclipse Adoptium' -Directory -Filter 'jre-21*' -ErrorAction SilentlyContinue | Select-Object -First 1
    if ($Java21) { $Java = Join-Path $Java21.FullName 'bin\java.exe' }
    else { $Java = (Get-Command java.exe -ErrorAction Stop).Source }
    $JavaHome = Split-Path -Parent (Split-Path -Parent $Java)
}
$env:JAVA_HOME = $JavaHome
$env:Path = (Join-Path $JavaHome 'bin') + ';' + $env:Path
$BuildTools = 'C:\Users\24541\AppData\Local\Android\Sdk\build-tools\36.1.0'
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
$TempRoot = Join-Path $ToolsRoot 'temp'
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

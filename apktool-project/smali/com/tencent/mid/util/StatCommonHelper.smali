.class public Lcom/tencent/mid/util/StatCommonHelper;
.super Ljava/lang/Object;
.source "StatCommonHelper.java"


# static fields
.field private static curAppMd5Signature:Ljava/lang/String; = ""

.field private static curAppSHA1Signature:Ljava/lang/String; = ""

.field private static curProcessName:Ljava/lang/String;

.field private static logger:Lcom/tencent/mid/util/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    invoke-static {}, Lcom/tencent/mid/util/Util;->getLogger()Lcom/tencent/mid/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/mid/util/StatCommonHelper;->logger:Lcom/tencent/mid/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 73
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 75
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_0

    .line 76
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_1

    :cond_0
    :goto_0
    const-string v0, "unknown"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_1
    move-exception p0

    .line 80
    :goto_1
    sget-object v1, Lcom/tencent/mid/util/StatCommonHelper;->logger:Lcom/tencent/mid/util/Logger;

    invoke-virtual {v1, p0}, Lcom/tencent/mid/util/Logger;->e(Ljava/lang/Object;)V

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static getCurAppMd5Signature(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 130
    sget-object v0, Lcom/tencent/mid/util/StatCommonHelper;->curAppMd5Signature:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mid/util/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    sget-object p0, Lcom/tencent/mid/util/StatCommonHelper;->curAppMd5Signature:Ljava/lang/String;

    return-object p0

    .line 134
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_1

    .line 137
    sget-object p0, Lcom/tencent/mid/util/StatCommonHelper;->logger:Lcom/tencent/mid/util/Logger;

    const-string v0, "packageInfo is null "

    invoke-virtual {p0, v0}, Lcom/tencent/mid/util/Logger;->e(Ljava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 140
    :cond_1
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_3

    .line 141
    array-length v0, p0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 145
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mid/util/Util;->md5sum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/mid/util/StatCommonHelper;->curAppMd5Signature:Ljava/lang/String;

    goto :goto_1

    .line 142
    :cond_3
    :goto_0
    sget-object p0, Lcom/tencent/mid/util/StatCommonHelper;->logger:Lcom/tencent/mid/util/Logger;

    const-string v0, "signatures is null"

    invoke-virtual {p0, v0}, Lcom/tencent/mid/util/Logger;->e(Ljava/lang/Object;)V

    const-string p0, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 147
    sget-object v0, Lcom/tencent/mid/util/StatCommonHelper;->logger:Lcom/tencent/mid/util/Logger;

    invoke-virtual {v0, p0}, Lcom/tencent/mid/util/Logger;->e(Ljava/lang/Object;)V

    .line 149
    :goto_1
    sget-object p0, Lcom/tencent/mid/util/StatCommonHelper;->curAppMd5Signature:Ljava/lang/String;

    return-object p0
.end method

.method public static getCurAppSHA1Signature(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 155
    sget-object v0, Lcom/tencent/mid/util/StatCommonHelper;->curAppSHA1Signature:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mid/util/StatCommonHelper;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    sget-object p0, Lcom/tencent/mid/util/StatCommonHelper;->curAppSHA1Signature:Ljava/lang/String;

    return-object p0

    .line 159
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_1

    .line 162
    sget-object p0, Lcom/tencent/mid/util/StatCommonHelper;->logger:Lcom/tencent/mid/util/Logger;

    const-string v0, "packageInfo is null "

    invoke-virtual {p0, v0}, Lcom/tencent/mid/util/Logger;->e(Ljava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 165
    :cond_1
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_6

    .line 166
    array-length v0, p0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 170
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    const-string v1, "SHA1"

    .line 171
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 172
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 173
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 174
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_5

    .line 176
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const-string v4, "0"

    .line 179
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v2, -0x1

    if-eq v0, v3, :cond_4

    const-string v3, ":"

    .line 183
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/mid/util/StatCommonHelper;->curAppSHA1Signature:Ljava/lang/String;

    goto :goto_2

    .line 167
    :cond_6
    :goto_1
    sget-object p0, Lcom/tencent/mid/util/StatCommonHelper;->logger:Lcom/tencent/mid/util/Logger;

    const-string v0, "signatures is null"

    invoke-virtual {p0, v0}, Lcom/tencent/mid/util/Logger;->e(Ljava/lang/Object;)V

    const-string p0, ""
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 192
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p0

    .line 190
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception p0

    .line 188
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 194
    :goto_2
    sget-object p0, Lcom/tencent/mid/util/StatCommonHelper;->curAppSHA1Signature:Ljava/lang/String;

    return-object p0
.end method

.method public static getCurAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 60
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p0, :cond_0

    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_0

    :catch_1
    move-exception p0

    .line 65
    :goto_0
    sget-object v1, Lcom/tencent/mid/util/StatCommonHelper;->logger:Lcom/tencent/mid/util/Logger;

    invoke-virtual {v1, p0}, Lcom/tencent/mid/util/Logger;->e(Ljava/lang/Object;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method static getCurProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 97
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 99
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 101
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 100
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 102
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_0

    .line 103
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDateString(I)Ljava/lang/String;
    .locals 2

    .line 219
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 220
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->roll(II)V

    .line 221
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "android.permission.GET_TASKS"

    .line 39
    invoke-static {p0, v0}, Lcom/tencent/mid/util/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "activity"

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 43
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 44
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 45
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 48
    :cond_0
    sget-object p0, Lcom/tencent/mid/util/StatCommonHelper;->logger:Lcom/tencent/mid/util/Logger;

    const-string v0, "Could not get permission of android.permission.GET_TASKS"

    invoke-virtual {p0, v0}, Lcom/tencent/mid/util/Logger;->e(Ljava/lang/Object;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTomorrowStartMilliseconds()J
    .locals 6

    const-wide/32 v0, 0x5265c00

    .line 202
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    const/4 v4, 0x0

    .line 203
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 204
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 205
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 206
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 207
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    add-long v4, v2, v0

    return-wide v4

    :catch_0
    move-exception v2

    .line 209
    sget-object v3, Lcom/tencent/mid/util/StatCommonHelper;->logger:Lcom/tencent/mid/util/Logger;

    invoke-virtual {v3, v2}, Lcom/tencent/mid/util/Logger;->e(Ljava/lang/Object;)V

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long v4, v2, v0

    return-wide v4
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 234
    :try_start_0
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "http.agent"

    .line 236
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "http.agent"

    .line 239
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 241
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 242
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 243
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x1f

    if-le v4, v5, :cond_2

    const/16 v5, 0x7f

    if-lt v4, v5, :cond_1

    goto :goto_2

    .line 247
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_2
    :goto_2
    const-string v5, "\\u%04x"

    const/4 v6, 0x1

    .line 245
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 250
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isMainProcess(Landroid/content/Context;)Z
    .locals 1

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/tencent/mid/util/StatCommonHelper;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isStringValid(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

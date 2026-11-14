.class public Lcom/baidu/mshield/utility/g;
.super Ljava/lang/Object;
.source "ProviderAccessUtil.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "On7h9W1_KIkIa50wk9Fnl1friw1cdOsubmr_O-Hrgss="

    const-string v1, "73Ry_SRX9WDHPoeAkGWfJbuntGR7RQ3rde1s6KyyCoo="

    const-string v2, "iQirV45vitYDQfzxgr68ylBY1DWLBKje2Pl428sE27Q="

    const-string v3, "czwe2zUrt14MfnaeH474T5prOCIik3agOnBud_KwFa0="

    const-string v4, "JzLix2JtXzSSsVkQFD0Cnf37028Rco5rGb7_-t_C8Qk="

    const-string v5, "lUApGLCwwTIqYrpC4ZaqkVItjc8DeoJ5fB_pxizrjnc="

    const-string v6, "6PzPHS4JINi0q8yUj180JTMbpq1Q44DuQggknxVmVPA="

    const-string v7, "fCbyLrInjq1BOByP4wH4mUGBidquiIKIy6zcJCBuKtk="

    const-string v8, "qEeaB7chq_oSIUyWhq_EwETFQIu3w3myIFyGD80p_u8="

    const-string v9, "UNzyljxPfmKANfePasqvdfmpLS4aJ1v0S1Aj2BGl75o="

    const-string v10, "8aRmj9NoeaLTFLe54rCmNLYIZoWE7hrVdjvM3xBfHQ4="

    const-string v11, "WtGvBTWjt2PyMX5rQclkgiNR3aDxFtoBNe1UnNpbL1I="

    .line 1
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mshield/utility/g;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "mshield"

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/baidu/mshield/utility/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 3

    const/4 v0, 0x0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 90
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v2, 0x11

    if-lt v1, v2, :cond_6

    const/16 v2, 0x18

    .line 93
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    :try_start_2
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_1

    if-ge v1, v2, :cond_0

    .line 101
    :try_start_3
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p0, v0

    .line 104
    :goto_1
    :try_start_4
    invoke-static {p1}, Lcom/baidu/mshield/utility/a;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p0, :cond_3

    .line 107
    :try_start_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v2, :cond_2

    .line 109
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_2

    .line 111
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_3
    :goto_2
    return-object v0

    :catchall_2
    move-exception p1

    if-eqz p0, :cond_5

    .line 112
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v2, :cond_4

    .line 114
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_3

    .line 116
    :cond_4
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_5
    :goto_3
    throw p1

    .line 122
    :cond_6
    invoke-virtual {p0, p3, p1, v0, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    return-object p0

    :catchall_3
    move-exception p0

    .line 125
    invoke-static {p0}, Lcom/baidu/mshield/utility/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 80
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".ac.provider"

    .line 83
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 85
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/mshield/utility/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 87
    invoke-static {p0}, Lcom/baidu/mshield/utility/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;Z)Landroid/os/Bundle;
    .locals 17

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 5
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 7
    :try_start_1
    invoke-static {v2}, Lcom/baidu/mshield/utility/a;->a(Ljava/lang/Throwable;)V

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_a

    .line 10
    array-length v3, v2

    if-gtz v3, :cond_0

    goto/16 :goto_5

    .line 15
    :cond_0
    sget-object v3, Lcom/baidu/mshield/utility/g;->a:[Ljava/lang/String;

    array-length v4, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v4, :cond_b

    aget-object v8, v3, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 19
    :try_start_2
    new-instance v9, Ljava/lang/String;

    const/16 v10, 0xa

    .line 20
    invoke-static {v8, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    const/16 v10, 0x10

    .line 21
    invoke-static {v10}, Lcom/baidu/mshield/b/f/a;->a(I)[B

    move-result-object v10

    .line 22
    invoke-static {v8, v10}, Lcom/baidu/mshield/b/f/d;->b([B[B)[B

    move-result-object v8

    const-string v10, "UTF-8"

    invoke-direct {v9, v8, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v8, v0

    .line 26
    :try_start_3
    invoke-static {v8}, Lcom/baidu/mshield/utility/a;->a(Ljava/lang/Throwable;)V

    move-object v9, v1

    .line 28
    :goto_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "mshield"

    .line 29
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez p3, :cond_1

    return-object v1

    :cond_1
    const/4 v7, 0x1

    .line 42
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "content://"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".ac.provider"

    .line 44
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 46
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "request targetUri="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    .line 47
    array-length v11, v2

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_7

    aget-object v13, v2, v12

    .line 49
    iget-object v13, v13, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 50
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "request authority="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v9, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 53
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v5, p2

    .line 54
    invoke-static {v14, v15, v5, v13}, Lcom/baidu/mshield/utility/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz p5, :cond_4

    :try_start_4
    const-string v1, "handle_flag"

    .line 58
    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v16, v2

    const-string v2, "server_version"

    .line 60
    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_3

    move-object/from16 v1, p4

    .line 62
    invoke-static {v2, v1}, Lcom/baidu/mshield/utility/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_6

    return-object v13

    :cond_3
    move-object/from16 v1, p4

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v0

    const/4 v1, 0x0

    goto :goto_6

    :cond_4
    return-object v13

    :cond_5
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v5, p2

    move-object/from16 v1, p4

    move-object/from16 v16, v2

    :cond_6
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v16

    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v5, p2

    move-object/from16 v1, p4

    move-object/from16 v16, v2

    if-eqz v7, :cond_9

    const/4 v1, 0x0

    goto :goto_7

    :cond_8
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v5, p2

    move-object/from16 v1, p4

    move-object/from16 v16, v2

    :cond_9
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v16

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_a
    :goto_5
    return-object v1

    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 79
    :goto_6
    invoke-static {v2}, Lcom/baidu/mshield/utility/a;->a(Ljava/lang/Throwable;)V

    :cond_b
    :goto_7
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 126
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "\\."

    .line 129
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\."

    .line 130
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 131
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 132
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    if-eqz v3, :cond_2

    if-lez v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_3
    array-length p0, p0

    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le p0, p1, :cond_4

    const/4 v0, 0x1

    :catchall_0
    :cond_4
    return v0
.end method

.class public Lcom/baidu/sec/privacy/d/d$a;
.super Ljava/lang/Object;
.source "CuidV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sec/privacy/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a([B)[B
    .locals 1

    .line 1
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/baidu/sec/privacy/d/d$a;->a([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BI)[B
    .locals 17

    .line 2
    div-int/lit8 v2, p1, 0x4

    const/4 v3, 0x3

    mul-int/lit8 v2, v2, 0x3

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 4
    new-array v0, v4, [B

    return-object v0

    .line 6
    :cond_0
    new-array v2, v2, [B

    move/from16 v1, p1

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v1, -0x1

    .line 10
    aget-byte v6, p0, v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_c

    const/16 v8, 0xd

    if-eq v6, v8, :cond_c

    const/16 v9, 0x20

    if-eq v6, v9, :cond_c

    const/16 v10, 0x9

    if-eq v6, v10, :cond_c

    const/16 v11, 0x3d

    if-eq v6, v11, :cond_b

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    const v14, 0xff00

    const/high16 v15, 0xff0000

    if-ge v6, v1, :cond_8

    .line 24
    aget-byte v4, p0, v6

    if-eq v4, v7, :cond_7

    if-eq v4, v8, :cond_7

    if-eq v4, v9, :cond_7

    if-eq v4, v10, :cond_7

    const/16 v7, 0x41

    if-lt v4, v7, :cond_1

    const/16 v7, 0x5a

    if-gt v4, v7, :cond_1

    add-int/lit8 v4, v4, -0x41

    goto :goto_2

    :cond_1
    const/16 v7, 0x61

    if-lt v4, v7, :cond_2

    const/16 v7, 0x7a

    if-gt v4, v7, :cond_2

    add-int/lit8 v4, v4, -0x47

    goto :goto_2

    :cond_2
    const/16 v7, 0x30

    if-lt v4, v7, :cond_3

    const/16 v7, 0x39

    if-gt v4, v7, :cond_3

    add-int/lit8 v4, v4, 0x4

    goto :goto_2

    :cond_3
    const/16 v7, 0x2b

    if-ne v4, v7, :cond_4

    const/16 v4, 0x3e

    goto :goto_2

    :cond_4
    const/16 v7, 0x2f

    if-ne v4, v7, :cond_6

    const/16 v4, 0x3f

    :goto_2
    shl-int/lit8 v7, v12, 0x6

    int-to-byte v4, v4

    or-int/2addr v4, v7

    .line 40
    rem-int/lit8 v7, v13, 0x4

    if-ne v7, v3, :cond_5

    add-int/lit8 v7, v11, 0x1

    and-int v12, v4, v15

    shr-int/lit8 v12, v12, 0x10

    int-to-byte v12, v12

    .line 41
    aput-byte v12, v2, v11

    add-int/lit8 v11, v7, 0x1

    and-int v12, v4, v14

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    .line 42
    aput-byte v12, v2, v7

    add-int/lit8 v7, v11, 0x1

    and-int/lit16 v12, v4, 0xff

    int-to-byte v12, v12

    .line 43
    aput-byte v12, v2, v11

    goto :goto_3

    :cond_5
    move v7, v11

    :goto_3
    add-int/lit8 v13, v13, 0x1

    move v12, v4

    move v11, v7

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    return-object v0

    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    const/16 v7, 0xa

    goto :goto_1

    :cond_8
    if-lez v5, :cond_a

    mul-int/lit8 v0, v5, 0x6

    shl-int v0, v12, v0

    add-int/lit8 v1, v11, 0x1

    and-int v3, v0, v15

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    .line 50
    aput-byte v3, v2, v11

    const/4 v3, 0x1

    if-ne v5, v3, :cond_9

    add-int/lit8 v11, v1, 0x1

    and-int/2addr v0, v14

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    .line 52
    aput-byte v0, v2, v1

    goto :goto_5

    :cond_9
    move v11, v1

    .line 55
    :cond_a
    :goto_5
    new-array v0, v11, [B

    const/4 v4, 0x0

    .line 56
    invoke-static {v2, v4, v0, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_b
    add-int/lit8 v5, v5, 0x1

    :cond_c
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0
.end method

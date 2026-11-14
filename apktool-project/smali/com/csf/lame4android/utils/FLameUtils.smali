.class public Lcom/csf/lame4android/utils/FLameUtils;
.super Ljava/lang/Object;
.source "FLameUtils.java"


# instance fields
.field private bitRate:I

.field private numChannels:I

.field private sampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mp3lame"

    .line 16
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/csf/lame4android/utils/FLameUtils;->numChannels:I

    const/16 v0, 0x3e80

    .line 12
    iput v0, p0, Lcom/csf/lame4android/utils/FLameUtils;->sampleRate:I

    const/16 v0, 0x60

    .line 13
    iput v0, p0, Lcom/csf/lame4android/utils/FLameUtils;->bitRate:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/csf/lame4android/utils/FLameUtils;->numChannels:I

    const/16 v0, 0x3e80

    .line 12
    iput v0, p0, Lcom/csf/lame4android/utils/FLameUtils;->sampleRate:I

    const/16 v0, 0x60

    .line 13
    iput v0, p0, Lcom/csf/lame4android/utils/FLameUtils;->bitRate:I

    .line 53
    iput p1, p0, Lcom/csf/lame4android/utils/FLameUtils;->numChannels:I

    .line 54
    iput p2, p0, Lcom/csf/lame4android/utils/FLameUtils;->sampleRate:I

    .line 55
    iput p3, p0, Lcom/csf/lame4android/utils/FLameUtils;->bitRate:I

    return-void
.end method

.method private native destroyEncoder()V
.end method

.method private native encodeFile(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native initEncoder(IIIII)V
.end method


# virtual methods
.method public getBitRate()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/csf/lame4android/utils/FLameUtils;->bitRate:I

    return v0
.end method

.method public getNumChannels()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/csf/lame4android/utils/FLameUtils;->numChannels:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/csf/lame4android/utils/FLameUtils;->sampleRate:I

    return v0
.end method

.method public raw2mp3(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 64
    iget v1, p0, Lcom/csf/lame4android/utils/FLameUtils;->numChannels:I

    iget v2, p0, Lcom/csf/lame4android/utils/FLameUtils;->sampleRate:I

    iget v3, p0, Lcom/csf/lame4android/utils/FLameUtils;->bitRate:I

    const/4 v4, 0x1

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/csf/lame4android/utils/FLameUtils;->initEncoder(IIIII)V

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/csf/lame4android/utils/FLameUtils;->encodeFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 66
    invoke-direct {p0}, Lcom/csf/lame4android/utils/FLameUtils;->destroyEncoder()V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setBitRate(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/csf/lame4android/utils/FLameUtils;->bitRate:I

    return-void
.end method

.method public setNumChannels(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/csf/lame4android/utils/FLameUtils;->numChannels:I

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/csf/lame4android/utils/FLameUtils;->sampleRate:I

    return-void
.end method

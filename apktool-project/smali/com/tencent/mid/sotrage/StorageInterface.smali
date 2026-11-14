.class public abstract Lcom/tencent/mid/sotrage/StorageInterface;
.super Ljava/lang/Object;
.source "StorageInterface.java"


# static fields
.field private static final CHECK_ENTITY_TAG:Ljava/lang/String; = "4kU71lN96TJUomD1vOU9lgj9U+kKmxDPLVM+zzjst5U="

.field public static final KEY_SPLITER:Ljava/lang/String; = ","

.field private static final MID_DIR:Ljava/lang/String; = "6X8Y4XdM2Vhvn0I="

.field private static final MID_FILE_PATH:Ljava/lang/String; = "6X8Y4XdM2Vhvn0KfzcEatGnWaNU="

.field private static final STORAGE_TAG:Ljava/lang/String; = "4kU71lN96TJUomD1vOU9lgj9Tw=="

.field public static final TYPE_STOREAGE_INTERNAL:I = 0x2

.field public static final TYPE_STOREAGE_PERFERENCE:I = 0x4

.field public static final TYPE_STOREAGE_SETTING:I = 0x1

.field public static final VER_CURRENT:I = 0x3

.field public static final VER_NEW:I = 0xf4241

.field public static final VER_OLD:I

.field protected static logger:Lcom/tencent/mid/util/Logger;


# instance fields
.field protected context:Landroid/content/Context;

.field protected version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    invoke-static {}, Lcom/tencent/mid/util/Util;->getLogger()Lcom/tencent/mid/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/mid/sotrage/StorageInterface;->logger:Lcom/tencent/mid/util/Logger;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/tencent/mid/sotrage/StorageInterface;->context:Landroid/content/Context;

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/tencent/mid/sotrage/StorageInterface;->version:I

    .line 63
    iput-object p1, p0, Lcom/tencent/mid/sotrage/StorageInterface;->context:Landroid/content/Context;

    .line 64
    iput p2, p0, Lcom/tencent/mid/sotrage/StorageInterface;->version:I

    return-void
.end method

.method private readMid()Ljava/lang/String;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/tencent/mid/sotrage/StorageInterface;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/tencent/mid/sotrage/StorageInterface;->read()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mid/sotrage/StorageInterface;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private writeMid(Ljava/lang/String;)V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/tencent/mid/sotrage/StorageInterface;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/tencent/mid/sotrage/StorageInterface;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/mid/sotrage/StorageInterface;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract checkPermission()Z
.end method

.method protected abstract clear()V
.end method

.method protected decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 140
    invoke-static {p1}, Lcom/tencent/mid/util/Util;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method doClear()V
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcom/tencent/mid/sotrage/StorageInterface;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/tencent/mid/sotrage/StorageInterface;->logger:Lcom/tencent/mid/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear mid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/mid/sotrage/StorageInterface;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/Logger;->d(Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p0}, Lcom/tencent/mid/sotrage/StorageInterface;->clear()V

    :cond_0
    return-void
.end method

.method protected encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 136
    invoke-static {p1}, Lcom/tencent/mid/util/Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCheckEntityTag()Ljava/lang/String;
    .locals 2

    .line 48
    iget v0, p0, Lcom/tencent/mid/sotrage/StorageInterface;->version:I

    if-nez v0, :cond_0

    const-string v0, "4kU71lN96TJUomD1vOU9lgj9U+kKmxDPLVM+zzjst5U="

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "4kU71lN96TJUomD1vOU9lgj9U+kKmxDPLVM+zzjst5U="

    .line 49
    invoke-static {v1}, Lcom/tencent/mid/util/Util;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mid/sotrage/StorageInterface;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMidDir()Ljava/lang/String;
    .locals 2

    .line 38
    iget v0, p0, Lcom/tencent/mid/sotrage/StorageInterface;->version:I

    if-nez v0, :cond_0

    const-string v0, "6X8Y4XdM2Vhvn0I="

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6X8Y4XdM2Vhvn0I="

    .line 39
    invoke-static {v1}, Lcom/tencent/mid/util/Util;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mid/sotrage/StorageInterface;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMidFilePath()Ljava/lang/String;
    .locals 2

    .line 43
    iget v0, p0, Lcom/tencent/mid/sotrage/StorageInterface;->version:I

    if-nez v0, :cond_0

    const-string v0, "6X8Y4XdM2Vhvn0KfzcEatGnWaNU="

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6X8Y4XdM2Vhvn0KfzcEatGnWaNU="

    .line 44
    invoke-static {v1}, Lcom/tencent/mid/util/Util;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mid/sotrage/StorageInterface;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getStorageKey()Ljava/lang/String;
    .locals 2

    .line 53
    iget v0, p0, Lcom/tencent/mid/sotrage/StorageInterface;->version:I

    if-nez v0, :cond_0

    const-string v0, "4kU71lN96TJUomD1vOU9lgj9Tw=="

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "4kU71lN96TJUomD1vOU9lgj9Tw=="

    .line 54
    invoke-static {v1}, Lcom/tencent/mid/util/Util;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mid/sotrage/StorageInterface;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getStoreageTag()Ljava/lang/String;
    .locals 2

    .line 33
    iget v0, p0, Lcom/tencent/mid/sotrage/StorageInterface;->version:I

    if-nez v0, :cond_0

    const-string v0, "4kU71lN96TJUomD1vOU9lgj9Tw=="

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "4kU71lN96TJUomD1vOU9lgj9Tw=="

    .line 34
    invoke-static {v1}, Lcom/tencent/mid/util/Util;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mid/sotrage/StorageInterface;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public abstract getType()I
.end method

.method protected abstract read()Ljava/lang/String;
.end method

.method public readCheckEntity()Lcom/tencent/mid/sotrage/CheckEntity;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/tencent/mid/sotrage/StorageInterface;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/tencent/mid/sotrage/StorageInterface;->readCheckEntityIner()Lcom/tencent/mid/sotrage/CheckEntity;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract readCheckEntityIner()Lcom/tencent/mid/sotrage/CheckEntity;
.end method

.method public readMidEntity()Lcom/tencent/mid/api/MidEntity;
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/tencent/mid/sotrage/StorageInterface;->readMid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {v0}, Lcom/tencent/mid/api/MidEntity;->parse(Ljava/lang/String;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract write(Ljava/lang/String;)V
.end method

.method public writeCheckEntity(Lcom/tencent/mid/sotrage/CheckEntity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mid/sotrage/StorageInterface;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p0, p1}, Lcom/tencent/mid/sotrage/StorageInterface;->writeCheckEntityIner(Lcom/tencent/mid/sotrage/CheckEntity;)V

    :cond_1
    return-void
.end method

.method protected abstract writeCheckEntityIner(Lcom/tencent/mid/sotrage/CheckEntity;)V
.end method

.method public writeMidEntity(Lcom/tencent/mid/api/MidEntity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mid/sotrage/StorageInterface;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/tencent/mid/sotrage/StorageInterface;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/api/MidPreference;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/api/MidPreference;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mid/api/MidEntity;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mid/api/MidPreference;->writeMid(Ljava/lang/String;)V

    .line 97
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mid/api/MidEntity;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/mid/sotrage/StorageInterface;->writeMid(Ljava/lang/String;)V

    return-void
.end method

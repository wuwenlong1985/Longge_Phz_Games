.class Lcom/baidu/platform/comapi/map/GLTextureView$g;
.super Ljava/lang/Object;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platform/comapi/map/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "GLThreadManager"

.field private static final b:Ljava/lang/Class;

.field private static final c:Ljava/lang/reflect/Method;


# instance fields
.field private d:Z

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/baidu/platform/comapi/map/GLTextureView$f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 1725
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->b:Ljava/lang/Class;

    .line 1726
    sget-object v0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->b:Ljava/lang/Class;

    const-string v1, "getInt"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->c:Ljava/lang/reflect/Method;

    .line 1727
    sget-object v0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1729
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 1629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/platform/comapi/map/h;)V
    .locals 0

    .line 1629
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/GLTextureView$g;-><init>()V

    return-void
.end method

.method private c()V
    .locals 6

    .line 1734
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1736
    :try_start_0
    sget-object v1, Lcom/baidu/platform/comapi/map/GLTextureView$g;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ro.opengles.version"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 1737
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1736
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/high16 v1, 0x10000

    .line 1740
    iput v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->e:I

    .line 1745
    :goto_0
    iget v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->e:I

    const/high16 v2, 0x20000

    if-lt v1, v2, :cond_0

    .line 1746
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->g:Z

    .line 1749
    :cond_0
    sget-object v1, Lcom/baidu/platform/comapi/map/GLTextureView$g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkGLESVersion mGLESVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mMultipleGLESContextsAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->g:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->d:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/comapi/map/GLTextureView$f;)V
    .locals 2

    .line 1633
    sget-object v0, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1637
    :try_start_0
    invoke-static {p1, v1}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->a(Lcom/baidu/platform/comapi/map/GLTextureView$f;Z)Z

    .line 1638
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->i:Lcom/baidu/platform/comapi/map/GLTextureView$f;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    .line 1639
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->i:Lcom/baidu/platform/comapi/map/GLTextureView$f;

    .line 1641
    :cond_0
    sget-object p1, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1642
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    .line 1700
    sget-object v0, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1701
    :try_start_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->f:Z

    if-nez v1, :cond_1

    .line 1702
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/GLTextureView$g;->c()V

    const/16 v1, 0x1f01

    .line 1703
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    .line 1704
    iget v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->e:I

    const/high16 v2, 0x20000

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    const-string v1, "Q3Dimension MSM7500 "

    .line 1705
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->g:Z

    .line 1706
    sget-object v1, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1708
    :cond_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->g:Z

    xor-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->h:Z

    .line 1710
    sget-object v1, Lcom/baidu/platform/comapi/map/GLTextureView$g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkGLDriver renderer = \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" multipleContextsAllowed = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->g:Z

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mLimitedGLESContexts = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->h:Z

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    iput-boolean v3, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->f:Z

    .line 1717
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 2

    .line 1687
    sget-object v0, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1688
    :try_start_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->h:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1689
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()Z
    .locals 2

    .line 1693
    sget-object v0, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1694
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/GLTextureView$g;->c()V

    .line 1695
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->g:Z

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1696
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Lcom/baidu/platform/comapi/map/GLTextureView$f;)Z
    .locals 2

    .line 1653
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->i:Lcom/baidu/platform/comapi/map/GLTextureView$f;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->i:Lcom/baidu/platform/comapi/map/GLTextureView$f;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1658
    :cond_0
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/GLTextureView$g;->c()V

    .line 1659
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->g:Z

    if-eqz p1, :cond_1

    return v1

    .line 1666
    :cond_1
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->i:Lcom/baidu/platform/comapi/map/GLTextureView$f;

    if-eqz p1, :cond_2

    .line 1667
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->i:Lcom/baidu/platform/comapi/map/GLTextureView$f;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->i()V

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 1654
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->i:Lcom/baidu/platform/comapi/map/GLTextureView$f;

    .line 1655
    sget-object p1, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    return v1
.end method

.method public c(Lcom/baidu/platform/comapi/map/GLTextureView$f;)V
    .locals 1

    .line 1677
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->i:Lcom/baidu/platform/comapi/map/GLTextureView$f;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1678
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$g;->i:Lcom/baidu/platform/comapi/map/GLTextureView$f;

    .line 1680
    :cond_0
    sget-object p1, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

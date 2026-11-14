.class Lcom/baidu/mapapi/map/an;
.super Ljava/lang/Object;
.source "TextureMapView.java"

# interfaces
.implements Lcom/baidu/mapsdkplatform/comapi/c;


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/map/TextureMapView;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/map/TextureMapView;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/baidu/mapapi/map/an;->a:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 94
    invoke-static {p1}, Lcom/baidu/platform/comapi/util/i;->a(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

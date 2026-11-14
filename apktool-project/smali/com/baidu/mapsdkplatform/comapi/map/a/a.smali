.class public Lcom/baidu/mapsdkplatform/comapi/map/a/a;
.super Lcom/baidu/platform/comapi/map/InnerOverlay;
.source "TraceInnerOverlay.java"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/map/i;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x24

    .line 36
    invoke-direct {p0, v0}, Lcom/baidu/platform/comapi/map/InnerOverlay;-><init>(I)V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->d:Z

    .line 27
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->e:I

    .line 28
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->f:I

    .line 29
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->g:I

    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->h:Z

    .line 32
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->i:Z

    .line 33
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->j:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a:Ljava/util/List;

    .line 62
    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->k:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->k:Z

    .line 157
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->UpdateOverlay()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->h:Z

    return-void
.end method

.method public a(ZIII)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->d:Z

    .line 162
    iput p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->e:I

    .line 163
    iput p3, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->f:I

    .line 164
    iput p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->g:I

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/i;)Z
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a:Ljava/util/List;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 55
    monitor-exit v0

    return p1

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->k:Z

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->k:Z

    return p1

    :catchall_0
    move-exception p1

    .line 58
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->i:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->i:Z

    return v0
.end method

.method public c(Z)V
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->j:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->j:Z

    return v0
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->i:Z

    .line 144
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->j:Z

    .line 145
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a:Ljava/util/List;

    monitor-enter v0

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 147
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/InnerOverlay;->clear()V

    return-void

    :catchall_0
    move-exception v1

    .line 147
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getData()Ljava/lang/String;
    .locals 6

    .line 86
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->k:Z

    if-eqz v0, :cond_5

    .line 87
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a:Ljava/util/List;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 89
    monitor-exit v0

    return-object v1

    .line 91
    :cond_0
    new-instance v1, Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;-><init>()V

    .line 92
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->object()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 95
    iget-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->j:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const-string v2, "statuschange"

    .line 96
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "onpause"

    .line 97
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->i:Z

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 98
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endObject()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 99
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->getJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->setData(Ljava/lang/String;)V

    .line 100
    iput-boolean v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->k:Z

    .line 101
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/InnerOverlay;->getData()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_1
    const-string v2, "dataset"

    .line 104
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->arrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 105
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/platform/comapi/map/i;

    .line 106
    invoke-virtual {v5}, Lcom/baidu/platform/comapi/map/i;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->objectValue(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endArrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "startValue"

    .line 111
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "endValue"

    .line 112
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 113
    iget-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->d:Z

    if-eqz v2, :cond_3

    const-string v2, "isNeedRouteAnimate"

    .line 114
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "durationTime"

    .line 115
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    iget v5, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->e:I

    invoke-virtual {v2, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "delayTime"

    .line 116
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    iget v5, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->f:I

    invoke-virtual {v2, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "easingCurve"

    .line 117
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    iget v5, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->g:I

    invoke-virtual {v2, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 120
    iput-boolean v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->d:Z

    goto :goto_1

    :cond_3
    const-string v2, "isNeedRouteAnimate"

    .line 122
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "durationTime"

    .line 123
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "delayTime"

    .line 124
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "easingCurve"

    .line 125
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 127
    :goto_1
    iget-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->h:Z

    if-eqz v2, :cond_4

    const-string v2, "isRotateWhenTrack"

    .line 128
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    goto :goto_2

    :cond_4
    const-string v2, "isRotateWhenTrack"

    .line 130
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 132
    :goto_2
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endObject()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 133
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->getJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->setData(Ljava/lang/String;)V

    .line 134
    iput-boolean v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->k:Z

    .line 135
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 137
    :cond_5
    :goto_3
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/InnerOverlay;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/InnerOverlay;->setData(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->k:Z

    return-void
.end method

.class public abstract Lcom/baidu/platform/comapi/map/i;
.super Ljava/lang/Object;
.source "Geometry.java"


# instance fields
.field protected a:Lcom/baidu/platform/comapi/map/ap;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:F

.field protected l:[D

.field protected m:[D

.field protected n:[I

.field protected o:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

.field protected p:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

.field protected q:Z

.field protected r:Lcom/baidu/platform/comapi/util/JsonBuilder;

.field protected s:I

.field protected t:I

.field private u:Z

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>(Lcom/baidu/platform/comapi/map/ap;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 41
    iput v0, p0, Lcom/baidu/platform/comapi/map/i;->k:F

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/i;->u:Z

    .line 44
    iput v0, p0, Lcom/baidu/platform/comapi/map/i;->v:I

    .line 45
    iput v0, p0, Lcom/baidu/platform/comapi/map/i;->w:I

    .line 53
    new-instance v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-direct {v1, v0, v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    iput-object v1, p0, Lcom/baidu/platform/comapi/map/i;->o:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    .line 55
    new-instance v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-direct {v1, v0, v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    iput-object v1, p0, Lcom/baidu/platform/comapi/map/i;->p:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    const/4 v1, 0x1

    .line 57
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/i;->q:Z

    const/4 v1, -0x1

    .line 62
    iput v1, p0, Lcom/baidu/platform/comapi/map/i;->s:I

    .line 64
    iput v0, p0, Lcom/baidu/platform/comapi/map/i;->t:I

    .line 72
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/i;->a:Lcom/baidu/platform/comapi/map/ap;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method protected a(I)Ljava/lang/String;
    .locals 8

    .line 84
    new-instance v0, Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 86
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->object()Lcom/baidu/platform/comapi/util/JsonBuilder;

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_2

    .line 90
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "path"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->arrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 91
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->l:[D

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 92
    :goto_0
    iget-object v4, p0, Lcom/baidu/platform/comapi/map/i;->l:[D

    array-length v4, v4

    if-ge p1, v4, :cond_0

    .line 93
    iget-object v4, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    iget-object v5, p0, Lcom/baidu/platform/comapi/map/i;->l:[D

    aget-wide v6, v5, p1

    invoke-virtual {v4, v6, v7}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(D)Lcom/baidu/platform/comapi/util/JsonBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endArrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 99
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "arrColor"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->arrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 100
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->n:[I

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 101
    :goto_1
    iget-object v4, p0, Lcom/baidu/platform/comapi/map/i;->n:[I

    array-length v4, v4

    if-ge p1, v4, :cond_1

    .line 102
    iget-object v4, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    iget-object v5, p0, Lcom/baidu/platform/comapi/map/i;->n:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endArrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 107
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "useColorArray"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    iget-boolean v4, p0, Lcom/baidu/platform/comapi/map/i;->g:Z

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(Z)Lcom/baidu/platform/comapi/util/JsonBuilder;

    goto/16 :goto_4

    :cond_2
    if-ne p1, v2, :cond_6

    .line 110
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "sgeo"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 111
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->object()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 113
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "bound"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->arrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 114
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->o:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->p:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    if-eqz p1, :cond_3

    .line 115
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/i;->o:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(D)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 116
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/i;->o:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(D)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 117
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/i;->p:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(D)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 118
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/i;->p:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(D)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 120
    :cond_3
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endArrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 122
    iget p1, p0, Lcom/baidu/platform/comapi/map/i;->t:I

    if-ne p1, v1, :cond_4

    .line 123
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "type"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    goto :goto_2

    .line 125
    :cond_4
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "type"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    iget v4, p0, Lcom/baidu/platform/comapi/map/i;->t:I

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 128
    :goto_2
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "elements"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->arrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 129
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->object()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 130
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "points"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->arrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 131
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->l:[D

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 132
    :goto_3
    iget-object v4, p0, Lcom/baidu/platform/comapi/map/i;->l:[D

    array-length v4, v4

    if-ge p1, v4, :cond_5

    .line 133
    iget-object v4, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    iget-object v5, p0, Lcom/baidu/platform/comapi/map/i;->l:[D

    aget-wide v6, v5, p1

    invoke-virtual {v4, v6, v7}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(D)Lcom/baidu/platform/comapi/util/JsonBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 136
    :cond_5
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endArrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 137
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endObject()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 138
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endArrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 139
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endObject()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 142
    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "ud"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 143
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "dir"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 145
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->a:Lcom/baidu/platform/comapi/map/ap;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->a:Lcom/baidu/platform/comapi/map/ap;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/ap;->a()I

    move-result p1

    if-eqz p1, :cond_7

    .line 146
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "nst"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/i;->a:Lcom/baidu/platform/comapi/map/ap;

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/ap;->a()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 147
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "fst"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/i;->a:Lcom/baidu/platform/comapi/map/ap;

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/ap;->a()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 148
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "ty"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    goto :goto_5

    .line 149
    :cond_7
    iget p1, p0, Lcom/baidu/platform/comapi/map/i;->t:I

    if-ne p1, v0, :cond_8

    .line 150
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "ty"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    const/16 v4, 0xc1c

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    goto :goto_5

    .line 151
    :cond_8
    iget p1, p0, Lcom/baidu/platform/comapi/map/i;->t:I

    if-ne p1, v1, :cond_9

    .line 152
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "ty"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    const/16 v4, 0xc80

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    goto :goto_5

    .line 154
    :cond_9
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "ty"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    const/4 v4, -0x1

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 156
    :goto_5
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "of"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 157
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "in"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 158
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "tx"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    const-string v4, ""

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 159
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "dis"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 160
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "align"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 161
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/i;->b:Z

    if-eqz p1, :cond_a

    .line 162
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "dash"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 163
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "ty"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    iget v4, p0, Lcom/baidu/platform/comapi/map/i;->t:I

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 165
    :cond_a
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/i;->c:Z

    if-eqz p1, :cond_b

    .line 166
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "trackMove"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->object()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 167
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "pointStyle"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/i;->a:Lcom/baidu/platform/comapi/map/ap;

    check-cast v4, Lcom/baidu/platform/comapi/map/aq;

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/aq;->e()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 168
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endObject()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 171
    :cond_b
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/i;->e:Z

    if-eqz p1, :cond_c

    .line 172
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "cancelDataReduction"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    goto :goto_6

    .line 174
    :cond_c
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "cancelDataReduction"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 177
    :goto_6
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/i;->f:Z

    if-eqz p1, :cond_d

    .line 178
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "cancelSmooth"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    goto :goto_7

    .line 180
    :cond_d
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "cancelSmooth"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 182
    :goto_7
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/i;->j:Z

    if-eqz p1, :cond_e

    .line 183
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "isTrackBloom"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 184
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "bloomSpeed"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    iget v4, p0, Lcom/baidu/platform/comapi/map/i;->k:F

    float-to-double v4, v4

    invoke-virtual {p1, v4, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(D)Lcom/baidu/platform/comapi/util/JsonBuilder;

    goto :goto_8

    .line 186
    :cond_e
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "isTrackBloom"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 189
    :goto_8
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/i;->d:Z

    if-eqz p1, :cond_13

    .line 190
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "pointMove"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->object()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 191
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/i;->h:Z

    if-eqz p1, :cond_f

    .line 192
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "use3dPoint"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    goto :goto_9

    .line 194
    :cond_f
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "use3dPoint"

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 196
    :goto_9
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/i;->u:Z

    if-eqz p1, :cond_10

    .line 197
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "duration"

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    iget v2, p0, Lcom/baidu/platform/comapi/map/i;->v:I

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 198
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "easingCurve"

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    iget v2, p0, Lcom/baidu/platform/comapi/map/i;->w:I

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 201
    iput-boolean v3, p0, Lcom/baidu/platform/comapi/map/i;->u:Z

    goto :goto_a

    .line 203
    :cond_10
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "duration"

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 204
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "easingCurve"

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 206
    :goto_a
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "pointArray"

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->arrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 207
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->m:[D

    if-eqz p1, :cond_11

    .line 208
    :goto_b
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->m:[D

    array-length p1, p1

    if-ge v3, p1, :cond_11

    .line 209
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/i;->m:[D

    aget-wide v4, v2, v3

    invoke-virtual {p1, v4, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(D)Lcom/baidu/platform/comapi/util/JsonBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 212
    :cond_11
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endArrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 213
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 214
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "imagePath"

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/i;->i:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 216
    :cond_12
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endObject()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 218
    :cond_13
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "style"

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->object()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 219
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->a:Lcom/baidu/platform/comapi/map/ap;

    if-eqz p1, :cond_15

    .line 220
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "width"

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/i;->a:Lcom/baidu/platform/comapi/map/ap;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/ap;->c()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 221
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "color"

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/i;->a:Lcom/baidu/platform/comapi/map/ap;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/ap;->b()I

    move-result v2

    invoke-static {v2}, Lcom/baidu/platform/comapi/map/ap;->c(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 222
    iget p1, p0, Lcom/baidu/platform/comapi/map/i;->t:I

    if-eq p1, v0, :cond_14

    iget p1, p0, Lcom/baidu/platform/comapi/map/i;->t:I

    if-ne p1, v1, :cond_15

    .line 223
    :cond_14
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v0, "scolor"

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/i;->a:Lcom/baidu/platform/comapi/map/ap;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/ap;->d()I

    move-result v0

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/ap;->c(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 226
    :cond_15
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endObject()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 229
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endObject()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 231
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->r:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(ZII)V
    .locals 0

    .line 235
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/i;->u:Z

    .line 236
    iput p2, p0, Lcom/baidu/platform/comapi/map/i;->v:I

    .line 237
    iput p3, p0, Lcom/baidu/platform/comapi/map/i;->w:I

    return-void
.end method

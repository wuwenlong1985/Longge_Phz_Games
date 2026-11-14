.class public Lcom/baidu/mshield/rp/c/b;
.super Ljava/lang/Object;
.source "ReportTopicBean.java"


# instance fields
.field public a:Lorg/json/JSONObject;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/baidu/mshield/rp/c/b;->a:Lorg/json/JSONObject;

    .line 3
    iput-object p2, p0, Lcom/baidu/mshield/rp/c/b;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/baidu/mshield/rp/c/b;->c:I

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mshield/rp/c/b;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mshield/rp/c/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mshield/rp/c/b;->c:I

    return v0
.end method

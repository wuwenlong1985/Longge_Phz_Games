.class public Lcom/happyplay/hnphz/wxapi/WXEntryActivity;
.super Landroid/app/Activity;
.source "WXEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/happyplay/hnphz/wxapi/WXEntryActivity$AsyncWork;,
        Lcom/happyplay/hnphz/wxapi/WXEntryActivity$ChineseMessage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public RunJS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 199
    new-instance v0, Lcom/happyplay/hnphz/wxapi/WXEntryActivity$2;

    invoke-direct {v0, p0}, Lcom/happyplay/hnphz/wxapi/WXEntryActivity$2;-><init>(Lcom/happyplay/hnphz/wxapi/WXEntryActivity;)V

    .line 220
    invoke-virtual {v0, p1, p2}, Lcom/happyplay/hnphz/wxapi/WXEntryActivity$2;->setjs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    .line 199
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-static {}, Lcom/happyplay/util/WeChatUtil;->getCurrentInst()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    invoke-virtual {p0}, Lcom/happyplay/hnphz/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    const-string p1, "weixin"

    const-string v0, "onCreate"

    .line 69
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/happyplay/hnphz/wxapi/WXEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 76
    invoke-static {}, Lcom/happyplay/util/WeChatUtil;->getCurrentInst()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    const-string p1, "weixin"

    const-string v0, "onNewIntent"

    .line 77
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 1

    const-string p1, "weixin"

    const-string v0, "onReq"

    .line 82
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/happyplay/hnphz/wxapi/WXEntryActivity;->finish()V

    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 4

    const-string v0, "com.tencent.mm.opensdk.modelmsg.SendMessageToWX.Resp"

    .line 173
    invoke-virtual {p0}, Lcom/happyplay/hnphz/wxapi/WXEntryActivity;->finish()V

    const-string v1, "weixin"

    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const-string v0, "weixin"

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPayFinish,errCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "weixin"

    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WX_SHARE_SUCCESS"

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/happyplay/hnphz/wxapi/WXEntryActivity;->RunJS(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_1
    iget v0, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    if-nez v0, :cond_2

    .line 185
    check-cast p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;

    iget-object p1, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    .line 186
    invoke-virtual {p0, p1}, Lcom/happyplay/hnphz/wxapi/WXEntryActivity;->startAsyncWorkWithWXLoginSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "weixin"

    const-string v1, "errCode==-4"

    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WX_USER_LOGIN"

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/happyplay/hnphz/wxapi/WXEntryActivity;->RunJS(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startAsyncWorkWithWXLoginSuccess(Ljava/lang/String;)V
    .locals 2

    .line 87
    new-instance v0, Lcom/happyplay/hnphz/wxapi/WXEntryActivity$AsyncWork;

    new-instance v1, Lcom/happyplay/hnphz/wxapi/WXEntryActivity$1;

    invoke-direct {v1, p0}, Lcom/happyplay/hnphz/wxapi/WXEntryActivity$1;-><init>(Lcom/happyplay/hnphz/wxapi/WXEntryActivity;)V

    .line 167
    invoke-virtual {v1, p1}, Lcom/happyplay/hnphz/wxapi/WXEntryActivity$1;->setjs(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/happyplay/hnphz/wxapi/WXEntryActivity$AsyncWork;-><init>(Lcom/happyplay/hnphz/wxapi/WXEntryActivity;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/happyplay/hnphz/wxapi/WXEntryActivity$AsyncWork;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

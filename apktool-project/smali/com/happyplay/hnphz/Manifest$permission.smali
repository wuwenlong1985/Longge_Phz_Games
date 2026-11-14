.class public final Lcom/happyplay/hnphz/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/happyplay/hnphz/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final C2D_MESSAGE:Ljava/lang/String; = "com.happyplay.hnphz.permission.C2D_MESSAGE"

.field public static final MESSAGE:Ljava/lang/String; = "com.happyplay.hnphz.push.permission.MESSAGE"

.field public static final MIPUSH_RECEIVE:Ljava/lang/String; = "com.happyplay.hnphz.permission.MIPUSH_RECEIVE"

.field public static final WRITE_APN_SETTINGS:Ljava/lang/String; = "android.permission.WRITE_APN_SETTINGS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class Lcom/baidu/platform/comapi/map/GLTextureView$f;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platform/comapi/map/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Lcom/baidu/platform/comapi/map/GLTextureView$e;

.field private s:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/map/GLTextureView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/map/GLTextureView;",
            ">;)V"
        }
    .end annotation

    .line 1040
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->p:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 1575
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->q:Z

    const/4 v1, 0x0

    .line 1041
    iput v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->k:I

    .line 1042
    iput v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->l:I

    .line 1043
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->n:Z

    .line 1044
    iput v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->m:I

    .line 1045
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->s:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/comapi/map/GLTextureView$f;Z)Z
    .locals 0

    .line 1038
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->b:Z

    return p1
.end method

.method private j()V
    .locals 1

    .line 1069
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1070
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->i:Z

    .line 1071
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->r:Lcom/baidu/platform/comapi/map/GLTextureView$e;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/GLTextureView$e;->e()V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    .line 1080
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->h:Z

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->r:Lcom/baidu/platform/comapi/map/GLTextureView$e;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/GLTextureView$e;->f()V

    const/4 v0, 0x0

    .line 1082
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->h:Z

    .line 1083
    invoke-static {}, Lcom/baidu/platform/comapi/map/GLTextureView;->a()Lcom/baidu/platform/comapi/map/GLTextureView$g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/map/GLTextureView$g;->c(Lcom/baidu/platform/comapi/map/GLTextureView$f;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1088
    new-instance v2, Lcom/baidu/platform/comapi/map/GLTextureView$e;

    iget-object v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->s:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/baidu/platform/comapi/map/GLTextureView$e;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->r:Lcom/baidu/platform/comapi/map/GLTextureView$e;

    const/4 v2, 0x0

    .line 1089
    iput-boolean v2, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->h:Z

    .line 1090
    iput-boolean v2, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->i:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    const/4 v15, 0x0

    .line 1106
    :goto_1
    :try_start_0
    sget-object v16, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1108
    :goto_2
    :try_start_1
    iget-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->a:Z

    if-eqz v3, :cond_0

    .line 1109
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1383
    sget-object v2, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 1384
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->j()V

    .line 1385
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->k()V

    .line 1386
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    move-object v3, v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1112
    :cond_0
    :try_start_3
    iget-object v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1113
    iget-object v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->p:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    move-object v15, v3

    goto/16 :goto_9

    .line 1119
    :cond_1
    iget-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->d:Z

    iget-boolean v2, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->c:Z

    if-eq v3, v2, :cond_2

    .line 1120
    iget-boolean v2, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->c:Z

    .line 1121
    iget-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->c:Z

    iput-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->d:Z

    .line 1122
    sget-object v3, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    const-string v3, "GLThread"

    move/from16 v18, v2

    .line 1124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v6

    const-string v6, "mPaused is now "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->d:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " tid="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v20, v7

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->getId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    move/from16 v19, v6

    move/from16 v20, v7

    const/16 v18, 0x0

    .line 1129
    :goto_3
    iget-boolean v2, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->j:Z

    if-eqz v2, :cond_3

    const-string v2, "GLThread"

    .line 1131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releasing EGL context because asked to tid="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->j()V

    .line 1134
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->k()V

    const/4 v2, 0x0

    .line 1135
    iput-boolean v2, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->j:Z

    const/4 v2, 0x1

    goto :goto_4

    :cond_3
    move/from16 v2, v19

    :goto_4
    if-eqz v4, :cond_4

    .line 1141
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->j()V

    .line 1142
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->k()V

    const/4 v4, 0x0

    :cond_4
    if-eqz v18, :cond_5

    .line 1147
    iget-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->i:Z

    if-eqz v3, :cond_5

    const-string v3, "GLThread"

    .line 1149
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releasing EGL surface because paused tid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v21, v8

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->j()V

    goto :goto_5

    :cond_5
    move/from16 v21, v8

    :goto_5
    if-eqz v18, :cond_8

    .line 1155
    iget-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->h:Z

    if-eqz v3, :cond_8

    .line 1156
    iget-object v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/platform/comapi/map/GLTextureView;

    if-eqz v3, :cond_6

    .line 1157
    invoke-static {v3}, Lcom/baidu/platform/comapi/map/GLTextureView;->g(Lcom/baidu/platform/comapi/map/GLTextureView;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_7

    .line 1158
    invoke-static {}, Lcom/baidu/platform/comapi/map/GLTextureView;->a()Lcom/baidu/platform/comapi/map/GLTextureView$g;

    move-result-object v3

    .line 1159
    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/GLTextureView$g;->a()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1160
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->k()V

    const-string v3, "GLThread"

    .line 1162
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releasing EGL context because paused tid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v18, :cond_9

    .line 1169
    invoke-static {}, Lcom/baidu/platform/comapi/map/GLTextureView;->a()Lcom/baidu/platform/comapi/map/GLTextureView$g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/GLTextureView$g;->b()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1170
    iget-object v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->r:Lcom/baidu/platform/comapi/map/GLTextureView$e;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/GLTextureView$e;->f()V

    const-string v3, "GLThread"

    .line 1172
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "terminating EGL because paused tid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :cond_9
    iget-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->e:Z

    if-nez v3, :cond_b

    iget-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->g:Z

    if-nez v3, :cond_b

    const-string v3, "GLThread"

    .line 1180
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "noticed surfaceView surface lost tid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->i:Z

    if-eqz v3, :cond_a

    .line 1183
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->j()V

    :cond_a
    const/4 v3, 0x1

    .line 1185
    iput-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->g:Z

    const/4 v3, 0x0

    .line 1186
    iput-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->f:Z

    .line 1187
    sget-object v3, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1191
    :cond_b
    iget-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->e:Z

    if-eqz v3, :cond_c

    iget-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->g:Z

    if-eqz v3, :cond_c

    const-string v3, "GLThread"

    .line 1193
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "noticed surfaceView surface acquired tid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 1195
    iput-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->g:Z

    .line 1196
    sget-object v3, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    :cond_c
    if-eqz v5, :cond_d

    const-string v3, "GLThread"

    .line 1201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sending render notification tid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    .line 1205
    iput-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->o:Z

    .line 1206
    sget-object v3, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    const/4 v5, 0x0

    const/4 v14, 0x0

    .line 1210
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->m()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1213
    iget-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->h:Z

    if-nez v3, :cond_f

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_7

    .line 1216
    :cond_e
    invoke-static {}, Lcom/baidu/platform/comapi/map/GLTextureView;->a()Lcom/baidu/platform/comapi/map/GLTextureView$g;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/baidu/platform/comapi/map/GLTextureView$g;->b(Lcom/baidu/platform/comapi/map/GLTextureView$f;)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v3, :cond_f

    .line 1218
    :try_start_4
    iget-object v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->r:Lcom/baidu/platform/comapi/map/GLTextureView$e;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/GLTextureView$e;->a()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v3, 0x1

    .line 1223
    :try_start_5
    iput-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->h:Z

    .line 1226
    sget-object v3, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    const/4 v10, 0x1

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1220
    invoke-static {}, Lcom/baidu/platform/comapi/map/GLTextureView;->a()Lcom/baidu/platform/comapi/map/GLTextureView$g;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/baidu/platform/comapi/map/GLTextureView$g;->c(Lcom/baidu/platform/comapi/map/GLTextureView$f;)V

    .line 1221
    throw v2

    .line 1230
    :cond_f
    :goto_7
    iget-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->h:Z

    if-eqz v3, :cond_10

    iget-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->i:Z

    if-nez v3, :cond_10

    const/4 v3, 0x1

    .line 1231
    iput-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->i:Z

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/16 v20, 0x1

    .line 1237
    :cond_10
    iget-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->i:Z

    if-eqz v3, :cond_1f

    .line 1238
    iget-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->q:Z

    if-eqz v3, :cond_11

    .line 1240
    iget v8, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->k:I

    .line 1241
    iget v9, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->l:I

    const-string v3, "GLThread"

    .line 1244
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "noticing that we want render notification tid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v22, v4

    move/from16 v23, v5

    .line 1245
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->getId()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1244
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 1251
    iput-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->q:Z

    move/from16 v21, v8

    const/4 v3, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x1

    const/16 v20, 0x1

    goto :goto_8

    :cond_11
    move/from16 v22, v4

    move/from16 v23, v5

    const/4 v3, 0x0

    .line 1253
    :goto_8
    iput-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->n:Z

    .line 1254
    sget-object v3, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    move v6, v2

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v4, v22

    move/from16 v5, v23

    .line 1271
    :goto_9
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v15, :cond_12

    .line 1274
    :try_start_6
    invoke-interface {v15}, Ljava/lang/Runnable;->run()V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_12
    if-eqz v11, :cond_14

    const-string v2, "GLThread"

    const-string v3, "egl createSurface"

    .line 1281
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    iget-object v2, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->r:Lcom/baidu/platform/comapi/map/GLTextureView$e;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/GLTextureView$e;->b()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1284
    sget-object v2, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v3, 0x1

    .line 1285
    :try_start_7
    iput-boolean v3, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->f:Z

    .line 1286
    sget-object v3, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1287
    monitor-exit v2

    :goto_a
    const/4 v2, 0x0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3

    :cond_13
    const/4 v11, 0x0

    :cond_14
    if-eqz v12, :cond_15

    .line 1294
    iget-object v2, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->r:Lcom/baidu/platform/comapi/map/GLTextureView$e;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/GLTextureView$e;->c()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    .line 1296
    invoke-static {}, Lcom/baidu/platform/comapi/map/GLTextureView;->a()Lcom/baidu/platform/comapi/map/GLTextureView$g;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/platform/comapi/map/GLTextureView$g;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    move-object v13, v2

    const/4 v12, 0x0

    :cond_15
    if-eqz v10, :cond_17

    const-string v2, "GLThread"

    const-string v3, "onSurfaceCreated"

    .line 1302
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-object v2, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/map/GLTextureView;

    if-eqz v2, :cond_16

    .line 1306
    invoke-static {v2}, Lcom/baidu/platform/comapi/map/GLTextureView;->h(Lcom/baidu/platform/comapi/map/GLTextureView;)Lcom/baidu/platform/comapi/map/SurfaceRenderer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/GLTextureView;->getWidth()I

    move-result v10

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/GLTextureView;->getHeight()I

    move-result v2

    move/from16 v24, v4

    move/from16 v25, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v5, v10, v2, v4}, Lcom/baidu/platform/comapi/map/SurfaceRenderer;->onSurfaceCreated(Landroid/view/SurfaceHolder;III)V

    goto :goto_b

    :cond_16
    move/from16 v24, v4

    move/from16 v25, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_b
    const/4 v10, 0x0

    goto :goto_c

    :cond_17
    move/from16 v24, v4

    move/from16 v25, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_c
    if-eqz v7, :cond_19

    const-string v2, "GLThread"

    .line 1313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSurfaceChanged("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget-object v2, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/map/GLTextureView;

    if-eqz v2, :cond_18

    .line 1317
    invoke-static {v2}, Lcom/baidu/platform/comapi/map/GLTextureView;->h(Lcom/baidu/platform/comapi/map/GLTextureView;)Lcom/baidu/platform/comapi/map/SurfaceRenderer;

    move-result-object v2

    invoke-interface {v2, v8, v9}, Lcom/baidu/platform/comapi/map/SurfaceRenderer;->onSurfaceChanged(II)V

    :cond_18
    const/4 v7, 0x0

    .line 1326
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1329
    iget-object v4, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/platform/comapi/map/GLTextureView;

    if-eqz v4, :cond_1a

    .line 1331
    invoke-static {v4}, Lcom/baidu/platform/comapi/map/GLTextureView;->h(Lcom/baidu/platform/comapi/map/GLTextureView;)Lcom/baidu/platform/comapi/map/SurfaceRenderer;

    move-result-object v5

    invoke-interface {v5, v13}, Lcom/baidu/platform/comapi/map/SurfaceRenderer;->onDrawFrame(Ljava/lang/Object;)V

    .line 1332
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/GLTextureView;->getFPS()I

    move-result v5

    goto :goto_d

    :cond_1a
    const/16 v5, 0x3c

    .line 1335
    :goto_d
    iget-object v4, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->r:Lcom/baidu/platform/comapi/map/GLTextureView$e;

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/GLTextureView$e;->d()I

    move-result v4

    move/from16 v26, v6

    const/16 v6, 0x3000

    if-eq v4, v6, :cond_1c

    const/16 v6, 0x300e

    if-eq v4, v6, :cond_1b

    const-string v6, "GLThread"

    move/from16 v27, v7

    const-string v7, "eglSwapBuffers"

    .line 1355
    invoke-static {v6, v7, v4}, Lcom/baidu/platform/comapi/map/GLTextureView$e;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1357
    sget-object v4, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    monitor-enter v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/4 v6, 0x1

    .line 1358
    :try_start_9
    iput-boolean v6, v1, Lcom/baidu/platform/comapi/map/GLTextureView$f;->f:Z

    .line 1359
    sget-object v7, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 1360
    monitor-exit v4

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v2, v0

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v2

    :cond_1b
    move/from16 v27, v7

    const/4 v6, 0x1

    const-string v4, "GLThread"

    .line 1346
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "egl context lost tid="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v29, v8

    move/from16 v30, v9

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_f

    :cond_1c
    move/from16 v27, v7

    :goto_e
    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v4, v24

    :goto_f
    if-eqz v14, :cond_1d

    const/16 v28, 0x1

    goto :goto_10

    :cond_1d
    move/from16 v28, v25

    .line 1368
    :goto_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v8, 0x3c

    if-ge v5, v8, :cond_1e

    if-lez v5, :cond_1e

    const/16 v8, 0x3e8

    .line 1370
    div-int/2addr v8, v5

    int-to-long v8, v8

    sub-long v16, v6, v2

    sub-long v2, v8, v16

    const-wide/16 v5, 0x1

    cmp-long v7, v2, v5

    if-lez v7, :cond_1e

    .line 1372
    sget-object v5, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    monitor-enter v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1373
    :try_start_b
    sget-object v6, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v6, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 1374
    monitor-exit v5

    goto :goto_11

    :catchall_3
    move-exception v0

    move-object v2, v0

    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_1e
    :goto_11
    move/from16 v6, v26

    move/from16 v7, v27

    move/from16 v5, v28

    move/from16 v8, v29

    move/from16 v9, v30

    goto/16 :goto_a

    :cond_1f
    move/from16 v22, v4

    move/from16 v23, v5

    move v6, v2

    move/from16 v7, v20

    .line 1269
    :try_start_d
    sget-object v2, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    move/from16 v8, v21

    move/from16 v4, v22

    move/from16 v5, v23

    const/4 v2, 0x0

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 1271
    monitor-exit v16
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    .line 1383
    sget-object v3, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 1384
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->j()V

    .line 1385
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->k()V

    .line 1386
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 1387
    throw v2

    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 1386
    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v2
.end method

.method private m()Z
    .locals 2

    .line 1395
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->f:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->k:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->l:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->n:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->m:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1403
    :cond_0
    sget-object v0, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1404
    :try_start_0
    iput p1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->m:I

    .line 1405
    sget-object p1, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1406
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1401
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(II)V
    .locals 3

    .line 1499
    sget-object v0, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1500
    :try_start_0
    iput p1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->k:I

    .line 1501
    iput p2, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->l:I

    const/4 p1, 0x1

    .line 1502
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->q:Z

    .line 1503
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->n:Z

    const/4 p1, 0x0

    .line 1504
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->o:Z

    .line 1505
    sget-object p1, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1508
    :goto_0
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->b:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->d:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->o:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Main thread"

    .line 1510
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowResize waiting for render complete from tid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->getId()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1513
    :try_start_1
    sget-object p1, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1515
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1518
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1549
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1551
    :cond_0
    sget-object v0, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1552
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1553
    sget-object p1, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1554
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
    .locals 1

    .line 1391
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()I
    .locals 2

    .line 1410
    sget-object v0, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1411
    :try_start_0
    iget v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->m:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1412
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 2

    .line 1416
    sget-object v0, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1417
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->n:Z

    .line 1418
    sget-object v1, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1419
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 2

    .line 1423
    sget-object v0, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1427
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->e:Z

    .line 1428
    sget-object v1, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1429
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1431
    :try_start_1
    sget-object v1, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1433
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1436
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 2

    .line 1440
    sget-object v0, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1444
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->e:Z

    .line 1445
    sget-object v1, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1446
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->g:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1448
    :try_start_1
    sget-object v1, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1450
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1453
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public f()V
    .locals 5

    .line 1457
    sget-object v0, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    .line 1459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 1461
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->c:Z

    .line 1462
    sget-object v1, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1463
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->d:Z

    if-nez v1, :cond_0

    const-string v1, "Main thread"

    const-string v2, "onPause waiting for mPaused."

    .line 1465
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1468
    :try_start_1
    sget-object v1, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1470
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1473
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public g()V
    .locals 5

    .line 1477
    sget-object v0, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    .line 1479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1481
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->c:Z

    const/4 v2, 0x1

    .line 1482
    iput-boolean v2, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->n:Z

    .line 1483
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->o:Z

    .line 1484
    sget-object v1, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1485
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->d:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->o:Z

    if-nez v1, :cond_0

    const-string v1, "Main thread"

    const-string v2, "onResume waiting for !mPaused."

    .line 1487
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1490
    :try_start_1
    sget-object v1, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1492
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1495
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public h()V
    .locals 2

    .line 1524
    sget-object v0, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1525
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->a:Z

    .line 1526
    sget-object v1, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1527
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1529
    :try_start_1
    sget-object v1, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1531
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1534
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    .line 1538
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/GLTextureView$f;->j:Z

    .line 1539
    sget-object v0, Lcom/baidu/platform/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public run()V
    .locals 3

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->setName(Ljava/lang/String;)V

    .line 1056
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/GLTextureView$f;->l()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    :catch_0
    invoke-static {}, Lcom/baidu/platform/comapi/map/GLTextureView;->a()Lcom/baidu/platform/comapi/map/GLTextureView$g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/map/GLTextureView$g;->a(Lcom/baidu/platform/comapi/map/GLTextureView$f;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/baidu/platform/comapi/map/GLTextureView;->a()Lcom/baidu/platform/comapi/map/GLTextureView$g;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/platform/comapi/map/GLTextureView$g;->a(Lcom/baidu/platform/comapi/map/GLTextureView$f;)V

    .line 1061
    throw v0

    :goto_0
    return-void
.end method

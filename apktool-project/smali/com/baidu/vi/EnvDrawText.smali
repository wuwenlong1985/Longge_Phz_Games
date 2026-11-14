.class public Lcom/baidu/vi/EnvDrawText;
.super Ljava/lang/Object;
.source "EnvDrawText.java"


# static fields
.field private static final DEVICE_VIVOX3L:Ljava/lang/String; = "vivo X3L"

.field private static final FONT_STYLE_BOLD:I = 0x1

.field private static final FONT_STYLE_ITALIC:I = 0x2

.field private static final FONT_STYLE_NORMAL:I

.field private static defaultFontBmp:Landroid/graphics/Bitmap;

.field public static fontCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/baidu/vi/c;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static phonetype:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized drawText(Ljava/lang/String;II[IIIIII)[I
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    const-class v8, Lcom/baidu/vi/EnvDrawText;

    monitor-enter v8

    .line 127
    :try_start_0
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10}, Landroid/graphics/Canvas;-><init>()V

    .line 128
    new-instance v11, Landroid/text/TextPaint;

    invoke-direct {v11}, Landroid/text/TextPaint;-><init>()V

    const/4 v12, 0x0

    if-eqz v10, :cond_20

    if-nez v11, :cond_0

    goto/16 :goto_10

    .line 134
    :cond_0
    sget-object v13, Lcom/baidu/vi/EnvDrawText;->phonetype:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 135
    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v13, Lcom/baidu/vi/EnvDrawText;->phonetype:Ljava/lang/String;

    .line 137
    :cond_1
    sget-object v13, Lcom/baidu/vi/EnvDrawText;->phonetype:Ljava/lang/String;

    if-eqz v13, :cond_2

    sget-object v13, Lcom/baidu/vi/EnvDrawText;->phonetype:Ljava/lang/String;

    const-string v14, "vivo X3L"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x0

    goto :goto_0

    :cond_2
    move/from16 v13, p2

    .line 140
    :goto_0
    invoke-virtual {v11}, Landroid/text/TextPaint;->reset()V

    const/4 v14, 0x1

    .line 141
    invoke-virtual {v11, v14}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 142
    invoke-virtual {v11, v14}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    move/from16 v15, p1

    int-to-float v15, v15

    .line 143
    invoke-virtual {v11, v15}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v15, 0x0

    .line 144
    invoke-virtual {v11, v15, v15, v15, v12}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 146
    invoke-static {v13}, Lcom/baidu/vi/EnvDrawText;->getTypeface(I)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-eqz v6, :cond_3

    int-to-float v13, v6

    .line 150
    invoke-virtual {v11, v13}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 151
    sget-object v13, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v11, v13}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 152
    sget-object v13, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v11, v13}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 153
    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v13}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_3
    const/16 v13, 0x5c

    .line 156
    invoke-virtual {v1, v13, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v13, -0x1

    const/high16 v16, -0x1000000

    const/16 v17, 0x3

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    if-ne v9, v13, :cond_c

    .line 158
    invoke-virtual {v11}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    .line 159
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v1, v12, v9, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v9

    float-to-double v14, v9

    add-double v14, v14, v18

    double-to-int v9, v14

    .line 160
    iget v13, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v14, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    .line 161
    aput v9, v2, v12

    const/4 v14, 0x1

    .line 162
    aput v13, v2, v14

    .line 164
    array-length v14, v2

    const/4 v15, 0x4

    if-ne v14, v15, :cond_4

    int-to-double v14, v9

    .line 165
    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    move/from16 v21, v13

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v18

    div-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v9, v14

    int-to-double v14, v9

    .line 166
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-int v9, v14

    move/from16 v14, v21

    int-to-double v14, v14

    .line 167
    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v18

    div-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    int-to-double v14, v14

    .line 168
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-int v12, v12

    move v14, v12

    goto :goto_1

    :cond_4
    move v14, v13

    :goto_1
    move v12, v9

    if-nez v12, :cond_6

    if-eqz v14, :cond_5

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 176
    :cond_6
    :goto_2
    array-length v9, v2

    const/4 v13, 0x4

    if-ne v9, v13, :cond_7

    const/4 v9, 0x2

    .line 177
    aput v12, v2, v9

    .line 178
    aput v14, v2, v17

    :cond_7
    if-lez v12, :cond_9

    if-lez v14, :cond_9

    .line 182
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v14, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-nez v9, :cond_8

    const/4 v2, 0x0

    .line 186
    new-array v1, v2, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-object v1

    .line 188
    :cond_8
    :try_start_1
    invoke-virtual {v10, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    :goto_3
    and-int v2, v5, v16

    if-nez v2, :cond_a

    const v2, 0xffffff

    .line 192
    invoke-virtual {v10, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_4

    .line 194
    :cond_a
    invoke-virtual {v10, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_4
    if-eqz v6, :cond_b

    if-eqz v10, :cond_b

    int-to-float v2, v6

    .line 201
    invoke-virtual {v11, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 202
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v11, v2}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 203
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v11, v2}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 204
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 205
    invoke-virtual {v11, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 207
    iget v2, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    const/4 v4, 0x0

    sub-float v15, v4, v2

    invoke-virtual {v10, v1, v4, v15, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 209
    :cond_b
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 210
    invoke-virtual {v11, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 212
    iget v2, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    const/4 v3, 0x0

    sub-float v15, v3, v2

    invoke-virtual {v10, v1, v3, v15, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_f

    :cond_c
    add-int/lit8 v12, v9, 0x1

    const/4 v13, 0x0

    .line 216
    invoke-virtual {v1, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v9

    float-to-double v13, v9

    add-double v13, v13, v18

    double-to-int v9, v13

    const/4 v13, 0x2

    :goto_5
    const/16 v14, 0x5c

    .line 218
    invoke-virtual {v1, v14, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    if-lez v15, :cond_e

    .line 219
    invoke-virtual {v1, v12, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v12

    float-to-double v3, v12

    add-double v3, v3, v18

    double-to-int v3, v3

    if-le v3, v9, :cond_d

    move v9, v3

    :cond_d
    add-int/lit8 v12, v15, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v3, p4

    move/from16 v4, p5

    goto :goto_5

    .line 224
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v12, v3, :cond_f

    .line 225
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v3, v3

    add-double v3, v3, v18

    double-to-int v3, v3

    if-le v3, v9, :cond_f

    move v9, v3

    .line 228
    :cond_f
    invoke-virtual {v11}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 229
    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v12, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v12

    float-to-double v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v4, v14

    mul-int v13, v13, v4

    const/4 v12, 0x0

    .line 232
    aput v9, v2, v12

    const/4 v12, 0x1

    .line 233
    aput v13, v2, v12

    .line 234
    array-length v12, v2

    const/4 v14, 0x4

    if-ne v12, v14, :cond_10

    int-to-double v14, v9

    .line 235
    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    move-object/from16 v22, v3

    move/from16 v23, v4

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v18

    div-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v9, v14

    int-to-double v14, v9

    .line 236
    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-int v9, v14

    int-to-double v12, v13

    .line 237
    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    int-to-double v12, v12

    .line 238
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    move v13, v3

    goto :goto_6

    :cond_10
    move-object/from16 v22, v3

    move/from16 v23, v4

    :goto_6
    move v12, v9

    if-nez v12, :cond_12

    if-eqz v13, :cond_11

    goto :goto_7

    :cond_11
    const/4 v12, 0x0

    const/4 v14, 0x0

    goto :goto_8

    :cond_12
    :goto_7
    move v14, v13

    .line 244
    :goto_8
    array-length v3, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_13

    const/4 v3, 0x2

    .line 245
    aput v12, v2, v3

    .line 246
    aput v14, v2, v17

    :cond_13
    if-lez v12, :cond_15

    if-lez v14, :cond_15

    .line 250
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v14, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-nez v9, :cond_14

    const/4 v3, 0x0

    .line 254
    new-array v1, v3, [I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    return-object v1

    .line 257
    :cond_14
    :try_start_2
    invoke-virtual {v10, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_9

    :cond_15
    const/4 v9, 0x0

    :goto_9
    and-int v3, v5, v16

    if-nez v3, :cond_16

    const v3, 0xffffff

    .line 261
    invoke-virtual {v10, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_a

    .line 263
    :cond_16
    invoke-virtual {v10, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 266
    :goto_a
    invoke-static/range {p8 .. p8}, Lcom/baidu/vi/EnvDrawText;->getTextAlignedType(I)Landroid/graphics/Paint$Align;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v3, 0x1

    if-ne v7, v3, :cond_17

    const/4 v2, 0x0

    goto :goto_b

    :cond_17
    const/4 v3, 0x2

    if-ne v7, v3, :cond_18

    const/4 v4, 0x0

    .line 275
    aget v2, v2, v4

    goto :goto_b

    :cond_18
    const/4 v4, 0x0

    .line 279
    aget v2, v2, v4

    div-int/2addr v2, v3

    :goto_b
    const/4 v3, 0x0

    const/16 v4, 0x5c

    const/16 v20, 0x0

    .line 286
    :goto_c
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-lez v5, :cond_1b

    .line 287
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-static {v3, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    add-int/lit8 v5, v5, 0x1

    if-eqz v6, :cond_19

    if-eqz v10, :cond_19

    int-to-float v7, v6

    .line 292
    invoke-virtual {v11, v7}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 293
    sget-object v7, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v11, v7}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 294
    sget-object v7, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v11, v7}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 295
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v7, p5

    .line 296
    invoke-virtual {v11, v7}, Landroid/text/TextPaint;->setColor(I)V

    int-to-float v13, v2

    mul-int v15, v20, v23

    int-to-float v15, v15

    move/from16 v24, v5

    move-object/from16 v4, v22

    .line 298
    iget v5, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v15, v5

    invoke-virtual {v10, v3, v13, v15, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_d

    :cond_19
    move/from16 v24, v5

    move-object/from16 v4, v22

    move/from16 v7, p5

    .line 301
    :goto_d
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v5, p4

    .line 302
    invoke-virtual {v11, v5}, Landroid/text/TextPaint;->setColor(I)V

    if-eqz v10, :cond_1a

    int-to-float v13, v2

    mul-int v15, v20, v23

    int-to-float v15, v15

    move-object/from16 v25, v9

    .line 304
    iget v9, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v15, v9

    invoke-virtual {v10, v3, v13, v15, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_e

    :cond_1a
    move-object/from16 v25, v9

    :goto_e
    add-int/lit8 v20, v20, 0x1

    move-object/from16 v22, v4

    move/from16 v3, v24

    move-object/from16 v9, v25

    const/16 v4, 0x5c

    goto :goto_c

    :cond_1b
    move-object/from16 v25, v9

    move-object/from16 v4, v22

    move/from16 v5, p4

    move/from16 v7, p5

    .line 308
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v3, v9, :cond_1d

    .line 309
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v1, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v1, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    if-eqz v6, :cond_1c

    if-eqz v10, :cond_1c

    int-to-float v3, v6

    .line 312
    invoke-virtual {v11, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 313
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v11, v3}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 314
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v11, v3}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 315
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 316
    invoke-virtual {v11, v7}, Landroid/text/TextPaint;->setColor(I)V

    int-to-float v3, v2

    mul-int v6, v20, v23

    int-to-float v6, v6

    .line 318
    iget v7, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v6, v7

    invoke-virtual {v10, v1, v3, v6, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 321
    :cond_1c
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 322
    invoke-virtual {v11, v5}, Landroid/text/TextPaint;->setColor(I)V

    if-eqz v10, :cond_1d

    int-to-float v2, v2

    mul-int v3, v20, v23

    int-to-float v3, v3

    .line 324
    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v4

    invoke-virtual {v10, v1, v2, v3, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1d
    move-object/from16 v9, v25

    :goto_f
    mul-int v12, v12, v14

    .line 330
    new-array v1, v12, [I

    if-eqz v9, :cond_1e

    .line 333
    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v2

    .line 334
    invoke-virtual {v9, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    :cond_1e
    if-eqz v9, :cond_1f

    .line 337
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 338
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    :cond_1f
    monitor-exit v8

    return-object v1

    :cond_20
    :goto_10
    const/4 v1, 0x0

    .line 130
    :try_start_3
    new-array v1, v1, [I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v8

    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 121
    monitor-exit v8

    throw v1
.end method

.method private static drawTextAlpha(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 628
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 629
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    if-eqz v2, :cond_e

    if-nez v3, :cond_0

    goto/16 :goto_6

    .line 635
    :cond_0
    sget-object v5, Lcom/baidu/vi/EnvDrawText;->phonetype:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 636
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v5, Lcom/baidu/vi/EnvDrawText;->phonetype:Ljava/lang/String;

    .line 638
    :cond_1
    sget-object v5, Lcom/baidu/vi/EnvDrawText;->phonetype:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    sget-object v5, Lcom/baidu/vi/EnvDrawText;->phonetype:Ljava/lang/String;

    const-string v7, "vivo X3L"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    move/from16 v5, p2

    .line 642
    :goto_0
    invoke-virtual {v3}, Landroid/text/TextPaint;->reset()V

    .line 643
    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 644
    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    move/from16 v7, p1

    int-to-float v7, v7

    .line 645
    invoke-virtual {v3, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 646
    invoke-static {v5}, Lcom/baidu/vi/EnvDrawText;->getTypeface(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float v5, v1

    const v7, 0x3fa66666    # 1.3f

    mul-float v5, v5, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v5, v7

    const/16 v8, 0x5c

    .line 650
    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    .line 652
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 653
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v0, v6, v8, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v8

    add-float/2addr v8, v5

    float-to-int v8, v8

    .line 655
    iget v9, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v10, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    if-lez v8, :cond_4

    if-lez v9, :cond_4

    .line 659
    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_3

    return-object v4

    .line 664
    :cond_3
    invoke-virtual {v4, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 666
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 669
    :goto_1
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    mul-float v5, v5, v7

    const/4 v6, 0x0

    .line 671
    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v6, v1

    invoke-virtual {v2, v0, v5, v6, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v16, v4

    goto/16 :goto_5

    :cond_5
    add-int/lit8 v10, v9, 0x1

    const/4 v11, 0x2

    .line 676
    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v9

    float-to-double v12, v9

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    double-to-int v9, v12

    .line 678
    :goto_2
    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    if-lez v12, :cond_7

    .line 679
    invoke-virtual {v0, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v10

    move/from16 v17, v5

    float-to-double v4, v10

    add-double/2addr v4, v14

    double-to-int v4, v4

    if-le v4, v9, :cond_6

    move v9, v4

    :cond_6
    add-int/lit8 v10, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v17

    goto :goto_2

    :cond_7
    move/from16 v17, v5

    .line 684
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v10, v4, :cond_8

    .line 685
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v4, v14

    double-to-int v4, v4

    if-le v4, v9, :cond_8

    move v9, v4

    .line 689
    :cond_8
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 690
    iget v5, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v10, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v5, v10

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v5, v12

    add-int/2addr v9, v1

    mul-int v11, v11, v5

    if-lez v9, :cond_a

    if-lez v11, :cond_a

    .line 696
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v11, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_9

    return-object v1

    .line 701
    :cond_9
    invoke-virtual {v1, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 703
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v16, v1

    goto :goto_3

    :cond_a
    const/16 v16, 0x0

    :goto_3
    const/4 v1, 0x3

    .line 707
    invoke-static {v1}, Lcom/baidu/vi/EnvDrawText;->getTextAlignedType(I)Landroid/graphics/Paint$Align;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    int-to-float v1, v9

    mul-float v7, v7, v17

    sub-float/2addr v1, v7

    const/4 v7, 0x0

    .line 727
    :goto_4
    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    if-lez v9, :cond_c

    .line 728
    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 729
    invoke-static {v6, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    add-int/lit8 v9, v9, 0x1

    .line 732
    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v10}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz v2, :cond_b

    mul-int v10, v7, v5

    int-to-float v10, v10

    .line 734
    iget v11, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v10, v11

    invoke-virtual {v2, v6, v1, v10, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_b
    add-int/lit8 v7, v7, 0x1

    move v6, v9

    goto :goto_4

    .line 738
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v6, v8, :cond_d

    .line 739
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 740
    invoke-static {v0, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    .line 742
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz v2, :cond_d

    mul-int v7, v7, v5

    int-to-float v5, v7

    .line 744
    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v5, v4

    invoke-virtual {v2, v0, v1, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_d
    :goto_5
    return-object v16

    :cond_e
    :goto_6
    const/4 v0, 0x0

    return-object v0
.end method

.method private static declared-synchronized drawTextExt(Ljava/lang/String;II[IIIIII)Landroid/graphics/Bitmap;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    const-class v8, Lcom/baidu/vi/EnvDrawText;

    monitor-enter v8

    .line 350
    :try_start_0
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10}, Landroid/graphics/Canvas;-><init>()V

    .line 351
    new-instance v11, Landroid/text/TextPaint;

    invoke-direct {v11}, Landroid/text/TextPaint;-><init>()V

    if-eqz v10, :cond_1e

    if-nez v11, :cond_0

    goto/16 :goto_e

    .line 357
    :cond_0
    sget-object v12, Lcom/baidu/vi/EnvDrawText;->phonetype:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 358
    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v12, Lcom/baidu/vi/EnvDrawText;->phonetype:Ljava/lang/String;

    .line 360
    :cond_1
    sget-object v12, Lcom/baidu/vi/EnvDrawText;->phonetype:Ljava/lang/String;

    const/4 v13, 0x0

    if-eqz v12, :cond_2

    sget-object v12, Lcom/baidu/vi/EnvDrawText;->phonetype:Ljava/lang/String;

    const-string v14, "vivo X3L"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    move/from16 v12, p2

    .line 363
    :goto_0
    invoke-virtual {v11}, Landroid/text/TextPaint;->reset()V

    const/4 v14, 0x1

    .line 364
    invoke-virtual {v11, v14}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 365
    invoke-virtual {v11, v14}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    move/from16 v15, p1

    int-to-float v15, v15

    .line 366
    invoke-virtual {v11, v15}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v15, 0x0

    .line 367
    invoke-virtual {v11, v15, v15, v15, v13}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 369
    invoke-static {v12}, Lcom/baidu/vi/EnvDrawText;->getTypeface(I)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-eqz v6, :cond_3

    int-to-float v12, v6

    .line 373
    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 374
    sget-object v12, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 375
    sget-object v12, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 376
    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_3
    const/16 v12, 0x5c

    .line 379
    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v12, -0x1

    const/high16 v16, -0x1000000

    const/16 v17, 0x3

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    if-ne v9, v12, :cond_c

    .line 381
    invoke-virtual {v11}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    .line 382
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v1, v13, v9, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v9

    float-to-double v14, v9

    add-double v14, v14, v18

    double-to-int v9, v14

    .line 383
    iget v12, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v14, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v12, v14

    float-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v12, v14

    .line 384
    aput v9, v2, v13

    const/4 v14, 0x1

    .line 385
    aput v12, v2, v14

    .line 387
    array-length v14, v2

    const/4 v15, 0x4

    if-ne v14, v15, :cond_4

    int-to-double v14, v9

    .line 388
    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    move-wide/from16 v20, v14

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v18

    div-double v13, v20, v18

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v9, v13

    int-to-double v13, v9

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 389
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    double-to-int v9, v13

    int-to-double v12, v12

    .line 390
    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    int-to-double v12, v12

    .line 391
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    move v12, v3

    :cond_4
    move v13, v9

    if-nez v13, :cond_6

    if-eqz v12, :cond_5

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 399
    :cond_6
    :goto_1
    array-length v3, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    const/4 v3, 0x2

    .line 400
    aput v13, v2, v3

    .line 401
    aput v12, v2, v17

    :cond_7
    if-lez v13, :cond_9

    if-lez v12, :cond_9

    .line 405
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v12, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_8

    .line 409
    monitor-exit v8

    return-object v9

    .line 411
    :cond_8
    :try_start_1
    invoke-virtual {v10, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_9
    const/4 v9, 0x0

    :goto_2
    and-int v2, v5, v16

    if-nez v2, :cond_a

    const v2, 0xffffff

    .line 415
    invoke-virtual {v10, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_3

    .line 417
    :cond_a
    invoke-virtual {v10, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_3
    if-eqz v6, :cond_b

    if-eqz v10, :cond_b

    int-to-float v2, v6

    .line 424
    invoke-virtual {v11, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 425
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v11, v2}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 426
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v11, v2}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 427
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v3, p5

    .line 428
    invoke-virtual {v11, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 430
    iget v2, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    const/4 v3, 0x0

    sub-float v15, v3, v2

    invoke-virtual {v10, v1, v3, v15, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 432
    :cond_b
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v4, p4

    .line 433
    invoke-virtual {v11, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 435
    iget v2, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    const/4 v3, 0x0

    sub-float v15, v3, v2

    invoke-virtual {v10, v1, v3, v15, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_d

    :cond_c
    move/from16 v25, v4

    move v4, v3

    move/from16 v3, v25

    add-int/lit8 v12, v9, 0x1

    const/4 v13, 0x0

    .line 439
    invoke-virtual {v1, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v9

    float-to-double v13, v9

    add-double v13, v13, v18

    double-to-int v9, v13

    const/4 v13, 0x2

    :goto_4
    const/16 v14, 0x5c

    .line 441
    invoke-virtual {v1, v14, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    if-lez v15, :cond_e

    .line 442
    invoke-virtual {v1, v12, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v12

    float-to-double v3, v12

    add-double v3, v3, v18

    double-to-int v3, v3

    if-le v3, v9, :cond_d

    move v9, v3

    :cond_d
    add-int/lit8 v12, v15, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v3, p5

    move/from16 v4, p4

    goto :goto_4

    .line 447
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v12, v3, :cond_f

    .line 448
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v3, v3

    add-double v3, v3, v18

    double-to-int v3, v3

    if-le v3, v9, :cond_f

    move v9, v3

    .line 451
    :cond_f
    invoke-virtual {v11}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 452
    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v12, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v12

    float-to-double v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v4, v14

    mul-int v13, v13, v4

    const/4 v12, 0x0

    .line 455
    aput v9, v2, v12

    const/4 v12, 0x1

    .line 456
    aput v13, v2, v12

    .line 457
    array-length v12, v2

    const/4 v14, 0x4

    if-ne v12, v14, :cond_10

    int-to-double v14, v9

    .line 458
    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    move-object/from16 v22, v3

    move/from16 v23, v4

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v18

    div-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v9, v14

    int-to-double v14, v9

    .line 459
    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-int v9, v14

    int-to-double v12, v13

    .line 460
    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    int-to-double v12, v12

    .line 461
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    goto :goto_5

    :cond_10
    move-object/from16 v22, v3

    move/from16 v23, v4

    move v3, v13

    :goto_5
    move v13, v9

    if-nez v13, :cond_12

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    const/4 v3, 0x0

    const/4 v13, 0x0

    .line 467
    :cond_12
    :goto_6
    array-length v4, v2

    const/4 v9, 0x4

    if-ne v4, v9, :cond_13

    const/4 v4, 0x2

    .line 468
    aput v13, v2, v4

    .line 469
    aput v3, v2, v17

    :cond_13
    if-lez v13, :cond_15

    if-lez v3, :cond_15

    .line 473
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_14

    .line 477
    monitor-exit v8

    return-object v9

    .line 480
    :cond_14
    :try_start_2
    invoke-virtual {v10, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_7

    :cond_15
    const/4 v9, 0x0

    :goto_7
    and-int v3, v5, v16

    if-nez v3, :cond_16

    const v3, 0xffffff

    .line 484
    invoke-virtual {v10, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_8

    .line 486
    :cond_16
    invoke-virtual {v10, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 489
    :goto_8
    invoke-static/range {p8 .. p8}, Lcom/baidu/vi/EnvDrawText;->getTextAlignedType(I)Landroid/graphics/Paint$Align;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v3, 0x1

    if-ne v7, v3, :cond_17

    const/4 v2, 0x0

    const/4 v13, 0x0

    goto :goto_9

    :cond_17
    const/4 v3, 0x2

    if-ne v7, v3, :cond_18

    const/4 v13, 0x0

    .line 498
    aget v2, v2, v13

    goto :goto_9

    :cond_18
    const/4 v13, 0x0

    .line 502
    aget v2, v2, v13

    div-int/2addr v2, v3

    :goto_9
    const/4 v3, 0x0

    :goto_a
    const/16 v4, 0x5c

    .line 509
    invoke-virtual {v1, v4, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-lez v5, :cond_1b

    .line 510
    invoke-virtual {v1, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 511
    invoke-static {v7, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    add-int/lit8 v13, v5, 0x1

    if-eqz v6, :cond_19

    if-eqz v10, :cond_19

    int-to-float v5, v6

    .line 515
    invoke-virtual {v11, v5}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 516
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v11, v5}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 517
    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v11, v5}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 518
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v5, p5

    .line 519
    invoke-virtual {v11, v5}, Landroid/text/TextPaint;->setColor(I)V

    int-to-float v12, v2

    mul-int v14, v3, v23

    int-to-float v14, v14

    move-object/from16 v15, v22

    .line 521
    iget v4, v15, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v14, v4

    invoke-virtual {v10, v7, v12, v14, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_b

    :cond_19
    move-object/from16 v15, v22

    move/from16 v5, p5

    .line 524
    :goto_b
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v4, p4

    .line 525
    invoke-virtual {v11, v4}, Landroid/text/TextPaint;->setColor(I)V

    if-eqz v10, :cond_1a

    int-to-float v12, v2

    mul-int v14, v3, v23

    int-to-float v14, v14

    move-object/from16 v24, v9

    .line 527
    iget v9, v15, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v14, v9

    invoke-virtual {v10, v7, v12, v14, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_c

    :cond_1a
    move-object/from16 v24, v9

    :goto_c
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v22, v15

    move-object/from16 v9, v24

    goto :goto_a

    :cond_1b
    move-object/from16 v24, v9

    move-object/from16 v15, v22

    move/from16 v4, p4

    move/from16 v5, p5

    .line 531
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v13, v7, :cond_1d

    .line 532
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 533
    invoke-static {v1, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    if-eqz v6, :cond_1c

    if-eqz v10, :cond_1c

    int-to-float v6, v6

    .line 535
    invoke-virtual {v11, v6}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 536
    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v11, v6}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 537
    sget-object v6, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v11, v6}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 538
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v6}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 539
    invoke-virtual {v11, v5}, Landroid/text/TextPaint;->setColor(I)V

    int-to-float v5, v2

    mul-int v6, v3, v23

    int-to-float v6, v6

    .line 541
    iget v7, v15, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v6, v7

    invoke-virtual {v10, v1, v5, v6, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 544
    :cond_1c
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 545
    invoke-virtual {v11, v4}, Landroid/text/TextPaint;->setColor(I)V

    if-eqz v10, :cond_1d

    int-to-float v2, v2

    mul-int v3, v3, v23

    int-to-float v3, v3

    .line 547
    iget v4, v15, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v4

    invoke-virtual {v10, v1, v2, v3, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1d
    move-object/from16 v9, v24

    .line 552
    :goto_d
    monitor-exit v8

    return-object v9

    .line 353
    :cond_1e
    :goto_e
    monitor-exit v8

    const/4 v1, 0x0

    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 344
    monitor-exit v8

    throw v1
.end method

.method private static getTextAlignedType(I)Landroid/graphics/Paint$Align;
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    .line 112
    sget-object p0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p0, :cond_1

    .line 114
    sget-object p0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    return-object p0

    .line 117
    :cond_1
    sget-object p0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    return-object p0
.end method

.method private static getTextBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 62
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 64
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 66
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const-string v2, "!"

    .line 70
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpg-float v6, v3, v5

    if-gtz v6, :cond_0

    const/high16 v3, 0x40400000    # 3.0f

    :cond_0
    cmpg-float v6, v4, v5

    if-gtz v6, :cond_1

    const/high16 v4, 0x41700000    # 15.0f

    :cond_1
    float-to-double v6, v3

    .line 78
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 79
    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 80
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 81
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    sub-float v4, v5, v4

    invoke-virtual {v1, v2, v5, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v3
.end method

.method private static getTextSize(Ljava/lang/String;II)[S
    .locals 8

    .line 556
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 561
    :cond_0
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    const/4 v2, 0x1

    .line 562
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 563
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    int-to-float p1, p1

    .line 564
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 565
    invoke-static {p2}, Lcom/baidu/vi/EnvDrawText;->getTypeface(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 568
    new-array p1, v0, [S

    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 570
    invoke-static {p0, p2, v3, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v4, v4

    int-to-short v4, v4

    .line 571
    aput-short v4, p1, v2

    move v2, v3

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private static getTextSizeExt(Ljava/lang/String;II)[F
    .locals 2

    .line 606
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 610
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 611
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 612
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float p1, p1

    .line 613
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 614
    invoke-static {p2}, Lcom/baidu/vi/EnvDrawText;->getTypeface(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 p1, 0x2

    .line 616
    new-array p1, p1, [F

    const/4 p2, 0x0

    .line 617
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    aput p0, p1, p2

    .line 618
    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result p2

    sub-float/2addr p0, p2

    aput p0, p1, v1

    return-object p1
.end method

.method private static getTextSizeWithHalo(Ljava/lang/String;III)[S
    .locals 7

    .line 577
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 582
    :cond_0
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    const/4 v2, 0x1

    .line 583
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 584
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    int-to-float p1, p1

    .line 585
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 586
    invoke-static {p2}, Lcom/baidu/vi/EnvDrawText;->getTypeface(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-eqz p3, :cond_1

    int-to-float p1, p3

    .line 590
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 591
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 592
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 593
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 597
    :cond_1
    new-array p1, v0, [S

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, v0, :cond_2

    add-int/lit8 v2, p3, 0x1

    .line 599
    invoke-static {p0, p2, v2, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    double-to-int v3, v3

    int-to-short v3, v3

    .line 600
    aput-short v3, p1, p3

    move p3, v2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private static getTypeface(I)Landroid/graphics/Typeface;
    .locals 1

    .line 41
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    packed-switch p0, :pswitch_data_0

    .line 51
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    .line 48
    :pswitch_0
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_0

    .line 45
    :pswitch_1
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static declared-synchronized isSystemFontChanged()Z
    .locals 5

    const-class v0, Lcom/baidu/vi/EnvDrawText;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-object v1, Lcom/baidu/vi/EnvDrawText;->defaultFontBmp:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 92
    invoke-static {}, Lcom/baidu/vi/EnvDrawText;->getTextBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/baidu/vi/EnvDrawText;->defaultFontBmp:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit v0

    return v2

    .line 95
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/baidu/vi/EnvDrawText;->getTextBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 97
    sget-object v3, Lcom/baidu/vi/EnvDrawText;->defaultFontBmp:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lcom/baidu/vi/EnvDrawText;->nativeIsBitmapSame(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 99
    sget-object v2, Lcom/baidu/vi/EnvDrawText;->defaultFontBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 100
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/baidu/vi/EnvDrawText;->defaultFontBmp:Landroid/graphics/Bitmap;

    .line 101
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    monitor-exit v0

    return v4

    .line 106
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 90
    monitor-exit v0

    throw v1
.end method

.method private static native nativeIsBitmapSame(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
.end method

.method public static declared-synchronized registFontCache(ILandroid/graphics/Typeface;)V
    .locals 2

    const-class v0, Lcom/baidu/vi/EnvDrawText;

    monitor-enter v0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 757
    :cond_0
    :try_start_0
    sget-object v1, Lcom/baidu/vi/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    .line 758
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/baidu/vi/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    .line 760
    :cond_1
    sget-object v1, Lcom/baidu/vi/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/vi/c;

    if-nez v1, :cond_2

    .line 762
    new-instance v1, Lcom/baidu/vi/c;

    invoke-direct {v1}, Lcom/baidu/vi/c;-><init>()V

    .line 763
    iput-object p1, v1, Lcom/baidu/vi/c;->a:Landroid/graphics/Typeface;

    .line 764
    iget p1, v1, Lcom/baidu/vi/c;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/baidu/vi/c;->b:I

    .line 765
    sget-object p1, Lcom/baidu/vi/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    invoke-virtual {p1, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 767
    :cond_2
    iget p0, v1, Lcom/baidu/vi/c;->b:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lcom/baidu/vi/c;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 753
    monitor-exit v0

    throw p0

    .line 755
    :cond_3
    :goto_1
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized removeFontCache(I)V
    .locals 3

    const-class v0, Lcom/baidu/vi/EnvDrawText;

    monitor-enter v0

    .line 772
    :try_start_0
    sget-object v1, Lcom/baidu/vi/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/vi/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 774
    monitor-exit v0

    return-void

    .line 776
    :cond_0
    :try_start_1
    iget v2, v1, Lcom/baidu/vi/c;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/baidu/vi/c;->b:I

    .line 777
    iget v1, v1, Lcom/baidu/vi/c;->b:I

    if-nez v1, :cond_1

    .line 778
    sget-object v1, Lcom/baidu/vi/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 782
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 771
    monitor-exit v0

    throw p0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 37
    sput-object p0, Lcom/baidu/vi/EnvDrawText;->mContext:Landroid/content/Context;

    return-void
.end method

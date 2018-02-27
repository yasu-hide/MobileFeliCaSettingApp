.class public final Lcom/felicanetworks/gpaslib/common/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/felicanetworks/gpaslib/common/h;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public static a([B)Lcom/felicanetworks/gpaslib/common/g;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    .line 123
    if-nez p0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputData value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    const v0, 0x7fffffff

    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 129
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0xf

    const/16 v2, 0x21

    const-string v3, "beyond the maximum length"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    new-instance v1, Lcom/felicanetworks/gpaslib/common/g;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/felicanetworks/gpaslib/common/g;-><init>(I)V

    .line 138
    invoke-virtual {v1, p0}, Lcom/felicanetworks/gpaslib/common/g;->a([B)V

    .line 144
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/felicanetworks/gpaslib/common/h;->a([BI)Ljava/util/List;

    move-result-object v0

    .line 145
    invoke-virtual {v1, v0}, Lcom/felicanetworks/gpaslib/common/g;->a(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    return-object v1

    .line 146
    :catch_0
    move-exception v0

    .line 148
    invoke-static {v1}, Lcom/felicanetworks/gpaslib/common/h;->a(Lcom/felicanetworks/gpaslib/common/g;)V

    .line 149
    throw v0
.end method

.method private static a([BI)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    .line 209
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 211
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0xf

    const/16 v2, 0x21

    const-string v3, "below the minimum length"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 223
    :try_start_0
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 224
    const/4 v4, 0x0

    .line 225
    const/4 v1, 0x0

    move v5, v1

    move v6, v4

    .line 230
    :goto_0
    new-instance v8, Lcom/felicanetworks/gpaslib/common/g;

    invoke-direct {v8, p1}, Lcom/felicanetworks/gpaslib/common/g;-><init>(I)V

    .line 236
    const/4 v2, 0x0

    .line 238
    const/4 v1, 0x0

    .line 243
    add-int/lit8 v3, v5, 0x1

    aget-byte v4, v0, v5

    if-nez v4, :cond_1

    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0xf

    const/16 v2, 0x22

    const-string v3, "0x00 is the first byte of the tag"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 335
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/gpaslib/common/g;

    .line 336
    invoke-static {v0}, Lcom/felicanetworks/gpaslib/common/h;->a(Lcom/felicanetworks/gpaslib/common/g;)V

    goto :goto_1

    .line 243
    :cond_1
    and-int/lit8 v4, v4, 0x1f

    const/16 v9, 0x1f

    if-ne v4, v9, :cond_5

    const/4 v4, 0x1

    :try_start_1
    invoke-static {v0, v3, v4}, Lcom/felicanetworks/gpaslib/common/h;->a([BII)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0xf

    const/16 v2, 0x1e

    const-string v3, "the second byte of the tag"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit8 v3, v3, -0x80

    const/16 v9, -0x80

    if-ne v3, v9, :cond_4

    const/4 v3, 0x1

    invoke-static {v0, v4, v3}, Lcom/felicanetworks/gpaslib/common/h;->a([BII)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0xf

    const/16 v2, 0x1e

    const-string v3, "the third byte of the tag"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v3, v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit8 v4, v4, -0x80

    const/16 v9, -0x80

    if-ne v4, v9, :cond_5

    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0xf

    const/16 v2, 0x22

    const-string v3, "tag exceeds the maximum length"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    :cond_4
    move v3, v4

    :cond_5
    sub-int/2addr v3, v5

    new-array v4, v3, [B

    const/4 v3, 0x0

    array-length v9, v4

    invoke-static {v0, v5, v4, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    array-length v3, v4

    add-int/2addr v5, v3

    .line 247
    const/4 v3, 0x0

    aget-byte v3, v4, v3

    and-int/lit8 v3, v3, 0x20

    const/16 v9, 0x20

    if-ne v3, v9, :cond_14

    .line 249
    const/4 v2, 0x1

    move v3, v2

    .line 253
    :goto_2
    invoke-virtual {v8, v4}, Lcom/felicanetworks/gpaslib/common/g;->b([B)V

    .line 258
    const/4 v2, 0x1

    invoke-static {v0, v5, v2}, Lcom/felicanetworks/gpaslib/common/h;->a([BII)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0xf

    const/16 v2, 0x1f

    const-string v3, "the first byte of the length"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v4, v5, 0x1

    aget-byte v2, v0, v5

    const/16 v9, 0x85

    and-int/lit16 v10, v2, 0xff

    if-gt v9, v10, :cond_7

    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0xf

    const/16 v2, 0x22

    const-string v3, "range of 0x85 and 0xFF is the first byte of the length"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    :cond_7
    const/16 v9, -0x7f

    if-ne v2, v9, :cond_8

    const/4 v2, 0x1

    :goto_3
    invoke-static {v0, v4, v2}, Lcom/felicanetworks/gpaslib/common/h;->a([BII)Z

    move-result v9

    if-nez v9, :cond_c

    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0xf

    const/16 v2, 0x1f

    const-string v3, "the remaining bytes of the length"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    :cond_8
    const/16 v9, -0x7e

    if-ne v2, v9, :cond_9

    const/4 v2, 0x2

    goto :goto_3

    :cond_9
    const/16 v9, -0x7d

    if-ne v2, v9, :cond_a

    const/4 v2, 0x3

    goto :goto_3

    :cond_a
    const/16 v9, -0x7c

    if-ne v2, v9, :cond_b

    const/4 v2, 0x4

    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    goto :goto_3

    :cond_c
    add-int/2addr v2, v4

    sub-int/2addr v2, v5

    new-array v4, v2, [B

    const/4 v2, 0x0

    array-length v9, v4

    invoke-static {v0, v5, v4, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    array-length v2, v4

    add-int/2addr v5, v2

    .line 262
    const/4 v2, 0x0

    aget-byte v2, v4, v2

    const/16 v9, -0x80

    if-ne v2, v9, :cond_13

    .line 264
    const/4 v1, 0x1

    move v2, v1

    .line 269
    :goto_4
    if-nez v2, :cond_d

    .line 271
    const/4 v1, 0x0

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v9, 0x81

    if-ge v1, v9, :cond_f

    .line 273
    invoke-static {v4}, Lcom/felicanetworks/gpaslib/common/a;->b([B)I

    move-result v1

    .line 280
    :goto_5
    invoke-virtual {v8, v1}, Lcom/felicanetworks/gpaslib/common/g;->a(I)V

    .line 286
    :cond_d
    invoke-virtual {v8}, Lcom/felicanetworks/gpaslib/common/g;->b()I

    move-result v1

    invoke-static {v0, v5, v1, v2}, Lcom/felicanetworks/gpaslib/common/h;->a([BIIZ)[B

    move-result-object v1

    .line 288
    array-length v4, v1

    add-int/2addr v4, v5

    .line 291
    if-nez v2, :cond_10

    .line 293
    invoke-virtual {v8, v1}, Lcom/felicanetworks/gpaslib/common/g;->c([B)V

    .line 308
    :goto_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 309
    if-eqz v3, :cond_e

    .line 311
    invoke-virtual {v8}, Lcom/felicanetworks/gpaslib/common/g;->c()[B

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Lcom/felicanetworks/gpaslib/common/h;->a([BI)Ljava/util/List;

    move-result-object v1

    .line 315
    :cond_e
    invoke-virtual {v8, v1}, Lcom/felicanetworks/gpaslib/common/g;->a(Ljava/util/List;)V

    .line 321
    sub-int v1, v4, v6

    new-array v1, v1, [B

    .line 322
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v0, v6, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    invoke-virtual {v8, v1}, Lcom/felicanetworks/gpaslib/common/g;->a([B)V

    .line 327
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    array-length v1, v0

    if-lt v4, v1, :cond_12

    .line 342
    return-object v7

    .line 276
    :cond_f
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [B

    .line 277
    const/4 v9, 0x1

    const/4 v10, 0x0

    array-length v11, v1

    invoke-static {v4, v9, v1, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    invoke-static {v1}, Lcom/felicanetworks/gpaslib/common/a;->b([B)I

    move-result v1

    goto :goto_5

    .line 296
    :cond_10
    array-length v2, v1

    sget-object v5, Lcom/felicanetworks/gpaslib/common/h;->a:[B

    array-length v5, v5

    sub-int/2addr v2, v5

    new-array v2, v2, [B

    .line 298
    const/4 v5, 0x0

    const/4 v9, 0x0

    array-length v10, v2

    invoke-static {v1, v5, v2, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    invoke-virtual {v8, v2}, Lcom/felicanetworks/gpaslib/common/g;->c([B)V

    .line 302
    array-length v1, v2

    invoke-virtual {v8, v1}, Lcom/felicanetworks/gpaslib/common/g;->a(I)V
    :try_end_1
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 338
    :cond_11
    throw v1

    :cond_12
    move v5, v4

    move v6, v4

    goto/16 :goto_0

    :cond_13
    move v2, v1

    goto :goto_4

    :cond_14
    move v3, v2

    goto/16 :goto_2
.end method

.method private static a(Lcom/felicanetworks/gpaslib/common/g;)V
    .locals 2

    .prologue
    .line 616
    if-nez p0, :cond_1

    .line 629
    :cond_0
    return-void

    .line 621
    :cond_1
    invoke-virtual {p0}, Lcom/felicanetworks/gpaslib/common/g;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/felicanetworks/gpaslib/common/g;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 623
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/gpaslib/common/g;

    invoke-static {v0}, Lcom/felicanetworks/gpaslib/common/h;->a(Lcom/felicanetworks/gpaslib/common/g;)V

    goto :goto_0
.end method

.method private static a([BII)Z
    .locals 2

    .prologue
    .line 647
    add-int v0, p1, p2

    .line 648
    array-length v1, p0

    if-gt v0, v1, :cond_0

    .line 649
    const/4 v0, 0x1

    .line 651
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([BIIZ)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    const/16 v5, 0xf

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 555
    .line 557
    if-eqz p3, :cond_1

    move v0, p1

    .line 562
    :cond_0
    :goto_0
    invoke-static {p0, v0, v2}, Lcom/felicanetworks/gpaslib/common/h;->a([BII)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 564
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    sget-object v4, Lcom/felicanetworks/gpaslib/common/h;->a:[B

    aget-byte v4, v4, v3

    if-ne v0, v4, :cond_5

    .line 565
    invoke-static {p0, v1, v2}, Lcom/felicanetworks/gpaslib/common/h;->a([BII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 566
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    sget-object v4, Lcom/felicanetworks/gpaslib/common/h;->a:[B

    aget-byte v4, v4, v2

    if-ne v1, v4, :cond_0

    move v1, v2

    .line 568
    :goto_1
    if-nez v1, :cond_4

    .line 576
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const-string v1, "the end of the variable length of the value"

    invoke-direct {v0, v5, v6, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    .line 584
    :cond_1
    if-nez p2, :cond_2

    .line 586
    new-array v0, v3, [B

    .line 602
    :goto_2
    return-object v0

    .line 590
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/felicanetworks/gpaslib/common/h;->a([BII)Z

    move-result v0

    if-nez v0, :cond_3

    .line 592
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const-string v1, "the specified number of bytes of the value"

    invoke-direct {v0, v5, v6, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    .line 596
    :cond_3
    add-int v0, p1, p2

    .line 599
    :cond_4
    sub-int/2addr v0, p1

    new-array v0, v0, [B

    .line 600
    array-length v1, v0

    invoke-static {p0, p1, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_1
.end method

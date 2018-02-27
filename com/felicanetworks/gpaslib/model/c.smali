.class public abstract Lcom/felicanetworks/gpaslib/model/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/felicanetworks/gpaslib/GpasPaymentServiceManager;


# static fields
.field private static c:[B

.field private static d:[B

.field private static e:[B


# instance fields
.field protected a:Lcom/felicanetworks/gpaslib/model/b;

.field protected b:Lcom/felicanetworks/gpaslib/model/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/felicanetworks/gpaslib/model/c;->c:[B

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/felicanetworks/gpaslib/model/c;->d:[B

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    sput-object v0, Lcom/felicanetworks/gpaslib/model/c;->e:[B

    return-void

    .line 54
    nop

    :array_0
    .array-data 1
        -0x80t
        -0x10t
        0x1t
        0x1t
    .end array-data

    .line 58
    :array_1
    .array-data 1
        0x63t
        0x10t
    .end array-data
.end method

.method public constructor <init>(Lcom/felicanetworks/gpaslib/model/b;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/model/c;->a:Lcom/felicanetworks/gpaslib/model/b;

    .line 41
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/model/c;->b:Lcom/felicanetworks/gpaslib/model/f;

    .line 74
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p1, v2, v0}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 76
    iput-object p1, p0, Lcom/felicanetworks/gpaslib/model/c;->a:Lcom/felicanetworks/gpaslib/model/b;

    .line 77
    invoke-virtual {p1}, Lcom/felicanetworks/gpaslib/model/b;->b()Lcom/felicanetworks/gpaslib/model/f;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/model/c;->b:Lcom/felicanetworks/gpaslib/model/f;

    .line 78
    return-void
.end method

.method private static a(Ljava/util/List;[B)Ljava/util/List;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 410
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 411
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/gpaslib/GpasContactlessService;

    .line 412
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasContactlessService;->getAid()[B

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasContactlessService;->getContactlessActivationState()B

    move-result v3

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasContactlessService;->getServiceType()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 415
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasContactlessService;->getAid()[B

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 419
    :cond_1
    return-object v1
.end method

.method private a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xfb

    .line 249
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/c;->b:Lcom/felicanetworks/gpaslib/model/f;

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/model/f;->getGpasApduManager()Lcom/felicanetworks/gpaslib/GpasApduManager;

    move-result-object v6

    .line 253
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0xfb

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    array-length v5, v0

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3

    if-le v4, v9, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-static {v4, v5, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    sget-object v4, Lcom/felicanetworks/gpaslib/model/c;->e:[B

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    array-length v4, v0

    int-to-byte v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Lcom/felicanetworks/gpaslib/GpasApduManager;->close()V

    throw v0

    .line 253
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    invoke-virtual {v2, v0, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-static {v0, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    new-instance v0, Lcom/felicanetworks/gpaslib/GpasApduCommand;

    sget-object v1, Lcom/felicanetworks/gpaslib/model/c;->c:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    sget-object v2, Lcom/felicanetworks/gpaslib/model/c;->c:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    sget-object v3, Lcom/felicanetworks/gpaslib/model/c;->c:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/felicanetworks/gpaslib/GpasApduCommand;-><init>(BBBB[B)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 256
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-gtz v0, :cond_3

    .line 289
    invoke-interface {v6}, Lcom/felicanetworks/gpaslib/GpasApduManager;->close()V

    .line 290
    :goto_2
    return-void

    .line 261
    :cond_3
    :try_start_2
    sget-object v0, Lcom/felicanetworks/gpaslib/model/f;->d:[B

    invoke-interface {v6, v0}, Lcom/felicanetworks/gpaslib/GpasApduManager;->open([B)V

    .line 263
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/gpaslib/GpasApduCommand;

    .line 268
    :goto_3
    invoke-interface {v6, v0}, Lcom/felicanetworks/gpaslib/GpasApduManager;->process(Lcom/felicanetworks/gpaslib/GpasApduCommand;)Lcom/felicanetworks/gpaslib/GpasApduResponse;

    move-result-object v2

    .line 269
    invoke-virtual {v2}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getSw1Sw2()[B

    move-result-object v3

    sget-object v4, Lcom/felicanetworks/gpaslib/model/f;->e:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    .line 272
    invoke-virtual {v2}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getSw1Sw2()[B

    move-result-object v2

    sget-object v3, Lcom/felicanetworks/gpaslib/model/f;->f:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 277
    const/16 v2, -0x80

    invoke-virtual {v0, v2}, Lcom/felicanetworks/gpaslib/GpasApduCommand;->setP1(B)V

    goto :goto_3

    .line 279
    :cond_5
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x3

    const/16 v2, 0x9

    const-string v3, "unexpected SW1-SW2 has returned"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 283
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    :cond_6
    invoke-interface {v6}, Lcom/felicanetworks/gpaslib/GpasApduManager;->close()V

    goto :goto_2
.end method


# virtual methods
.method protected final a([B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 343
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/c;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/felicanetworks/gpaslib/common/a;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v5, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/c;->b:Lcom/felicanetworks/gpaslib/model/f;

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/model/f;->getGpasApduManager()Lcom/felicanetworks/gpaslib/GpasApduManager;

    move-result-object v6

    .line 348
    :try_start_0
    sget-object v0, Lcom/felicanetworks/gpaslib/model/f;->d:[B

    invoke-interface {v6, v0}, Lcom/felicanetworks/gpaslib/GpasApduManager;->open([B)V

    .line 354
    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    .line 357
    add-int/lit8 v1, v0, -0x2

    .line 358
    const/4 v2, 0x3

    new-array v2, v2, [B

    const/4 v3, 0x0

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    const/4 v1, 0x1

    const/16 v3, 0x4f

    aput-byte v3, v2, v1

    const/4 v1, 0x2

    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 360
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 363
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 364
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 365
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 367
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasApduCommand;

    sget-object v1, Lcom/felicanetworks/gpaslib/model/c;->c:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    sget-object v2, Lcom/felicanetworks/gpaslib/model/c;->c:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    sget-object v3, Lcom/felicanetworks/gpaslib/model/c;->c:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    sget-object v4, Lcom/felicanetworks/gpaslib/model/c;->c:[B

    const/4 v7, 0x3

    aget-byte v4, v4, v7

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/felicanetworks/gpaslib/GpasApduCommand;-><init>(BBBB[B)V

    .line 374
    :goto_0
    invoke-interface {v6, v0}, Lcom/felicanetworks/gpaslib/GpasApduManager;->process(Lcom/felicanetworks/gpaslib/GpasApduCommand;)Lcom/felicanetworks/gpaslib/GpasApduResponse;

    move-result-object v1

    .line 379
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/model/c;->a:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v3, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SET STATUS Response "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 381
    invoke-virtual {v1}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getSw1Sw2()[B

    move-result-object v2

    sget-object v3, Lcom/felicanetworks/gpaslib/model/f;->e:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 383
    invoke-virtual {v1}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getSw1Sw2()[B

    move-result-object v1

    sget-object v2, Lcom/felicanetworks/gpaslib/model/c;->d:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    const/16 v1, -0x80

    invoke-virtual {v0, v1}, Lcom/felicanetworks/gpaslib/GpasApduCommand;->setP1(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 396
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Lcom/felicanetworks/gpaslib/GpasApduManager;->close()V

    throw v0

    .line 389
    :cond_0
    :try_start_1
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x3

    const/16 v2, 0x9

    const-string v3, "unexpected SW1-SW2 has returned"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 392
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    :cond_1
    invoke-interface {v6}, Lcom/felicanetworks/gpaslib/GpasApduManager;->close()V

    .line 397
    return-void
.end method

.method public exclusiveActivate([B)V
    .locals 8
    .param p1, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 132
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/c;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/felicanetworks/gpaslib/common/a;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v5, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/c;->a:Lcom/felicanetworks/gpaslib/model/b;

    invoke-static {p1, v0}, Lcom/felicanetworks/gpaslib/common/a;->a([BLcom/felicanetworks/gpaslib/model/b;)V

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/c;->b:Lcom/felicanetworks/gpaslib/model/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/c;->b:Lcom/felicanetworks/gpaslib/model/f;

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/model/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x2

    const/16 v2, 0x16

    const-string v3, "session is closed"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 145
    throw v0
    :try_end_0
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/c;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v7, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 188
    throw v0

    .line 149
    :cond_1
    const/4 v1, 0x0

    .line 150
    :try_start_1
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/c;->b:Lcom/felicanetworks/gpaslib/model/f;

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/model/f;->getGpasContactlessServiceList()Ljava/util/List;

    move-result-object v2

    .line 153
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/gpaslib/GpasContactlessService;

    .line 154
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasContactlessService;->getAid()[B

    move-result-object v4

    invoke-static {v4, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 160
    :goto_0
    if-nez v0, :cond_3

    .line 161
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0xc

    const/16 v2, 0x13

    const-string v3, "service not exist"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 165
    throw v0
    :try_end_1
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    :catch_1
    move-exception v0

    .line 190
    new-instance v1, Lcom/felicanetworks/gpaslib/GpasException;

    invoke-direct {v1, v5, v5, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    .line 194
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/c;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v6

    invoke-static {v0, v7, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 195
    throw v1

    .line 169
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasContactlessService;->getServiceType()I

    move-result v0

    if-eq v0, v5, :cond_4

    .line 171
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0xc

    const/16 v2, 0x19

    const-string v3, "service type must be \'payment\'"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 175
    throw v0

    .line 179
    :cond_4
    invoke-static {v2, p1}, Lcom/felicanetworks/gpaslib/model/c;->a(Ljava/util/List;[B)Ljava/util/List;

    move-result-object v0

    .line 182
    invoke-direct {p0, v0}, Lcom/felicanetworks/gpaslib/model/c;->a(Ljava/util/List;)V

    .line 185
    invoke-virtual {p0, p1}, Lcom/felicanetworks/gpaslib/model/c;->a([B)V
    :try_end_2
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 196
    return-void

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 435
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gpasSessionImpl = {"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/felicanetworks/gpaslib/model/c;->b:Lcom/felicanetworks/gpaslib/model/f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "},gpasContainer = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/felicanetworks/gpaslib/model/c;->a:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

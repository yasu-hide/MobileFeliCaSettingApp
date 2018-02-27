.class public final Lcom/felicanetworks/gpaslib/model/g;
.super Lcom/felicanetworks/gpaslib/model/f;
.source "SourceFile"


# static fields
.field private static j:[B

.field private static k:[B

.field private static l:[B

.field private static m:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/felicanetworks/gpaslib/model/g;->j:[B

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/felicanetworks/gpaslib/model/g;->k:[B

    .line 49
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/felicanetworks/gpaslib/model/g;->l:[B

    .line 54
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/felicanetworks/gpaslib/model/g;->m:[B

    return-void

    .line 41
    nop

    :array_0
    .array-data 1
        -0x80t
        -0x36t
        0x0t
    .end array-data

    .line 45
    :array_1
    .array-data 1
        0x69t
        -0x7bt
    .end array-data

    .line 49
    nop

    :array_2
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 54
    :array_3
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x5t
        0x38t
        0x0t
        0x2t
        -0x1t
        -0x7ft
        -0x1t
        0x10t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1t
    .end array-data
.end method

.method protected constructor <init>(Lcom/felicanetworks/gpaslib/model/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/felicanetworks/gpaslib/model/f;-><init>(Lcom/felicanetworks/gpaslib/model/b;)V

    .line 73
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x45

    const/4 v9, 0x7

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 360
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/g;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v8, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/g;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    sget-object v1, Lcom/felicanetworks/gpaslib/model/g;->l:[B

    invoke-interface {v0, v1}, Lcom/felicanetworks/gpaslib/GpasApduManager;->open([B)V
    :try_end_0
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    new-array v5, v8, [B

    aput-byte v7, v5, v7

    .line 379
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasApduCommand;

    sget-object v1, Lcom/felicanetworks/gpaslib/model/g;->j:[B

    aget-byte v1, v1, v7

    sget-object v2, Lcom/felicanetworks/gpaslib/model/g;->j:[B

    aget-byte v2, v2, v8

    sget-object v3, Lcom/felicanetworks/gpaslib/model/g;->j:[B

    const/4 v6, 0x2

    aget-byte v3, v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/felicanetworks/gpaslib/GpasApduCommand;-><init>(BBBB[B)V

    .line 385
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/g;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v1, v0}, Lcom/felicanetworks/gpaslib/GpasApduManager;->process(Lcom/felicanetworks/gpaslib/GpasApduCommand;)Lcom/felicanetworks/gpaslib/GpasApduResponse;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getSw1Sw2()[B

    move-result-object v1

    sget-object v2, Lcom/felicanetworks/gpaslib/model/g;->g:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const-string v1, "failed to get ICCID"

    invoke-direct {v0, v9, v9, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 392
    throw v0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    const/16 v1, 0x10

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasException;->getID()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/16 v1, 0x14

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasException;->getType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 367
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const-string v1, "ISD AID channel open failed"

    invoke-direct {v0, v9, v9, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 371
    throw v0

    .line 373
    :cond_0
    throw v0

    .line 393
    :cond_1
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getSw1Sw2()[B

    move-result-object v1

    sget-object v2, Lcom/felicanetworks/gpaslib/model/g;->e:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 395
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x3

    const/16 v2, 0x9

    const-string v3, "unexpected SW1-SW2 has returned"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 399
    throw v0

    .line 403
    :cond_2
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getResponseDataField()[B

    move-result-object v0

    .line 404
    invoke-static {v0}, Lcom/felicanetworks/gpaslib/common/h;->a([B)Lcom/felicanetworks/gpaslib/common/g;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/common/g;->d()Ljava/util/List;

    move-result-object v0

    .line 407
    const/4 v1, 0x0

    .line 409
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/gpaslib/common/g;

    .line 410
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/common/g;->a()[B

    move-result-object v3

    .line 411
    array-length v5, v3

    if-ne v8, v5, :cond_3

    aget-byte v3, v3, v7

    if-ne v3, v4, :cond_3

    .line 415
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/common/g;->c()[B

    move-result-object v0

    .line 419
    :goto_0
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/g;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v1}, Lcom/felicanetworks/gpaslib/GpasApduManager;->close()V

    .line 422
    invoke-static {v0}, Lcom/felicanetworks/gpaslib/common/a;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 425
    const-string v1, "F"

    if-eqz v0, :cond_5

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 426
    :goto_1
    return-object v0

    .line 425
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v7

    goto :goto_1

    :cond_5
    const-string v0, ""

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x14

    const/16 v6, 0x10

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/g;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/g;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/g;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    sget-object v1, Lcom/felicanetworks/gpaslib/model/g;->d:[B

    invoke-interface {v0, v1}, Lcom/felicanetworks/gpaslib/GpasApduManager;->open([B)V
    :try_end_1
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :try_start_2
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/g;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v5, v0, [B

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-byte v1, v5, v0

    new-instance v0, Lcom/felicanetworks/gpaslib/GpasApduCommand;

    sget-object v1, Lcom/felicanetworks/gpaslib/model/g;->j:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    sget-object v2, Lcom/felicanetworks/gpaslib/model/g;->j:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    sget-object v3, Lcom/felicanetworks/gpaslib/model/g;->j:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    const/16 v4, -0x5b

    invoke-direct/range {v0 .. v5}, Lcom/felicanetworks/gpaslib/GpasApduCommand;-><init>(BBBB[B)V

    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/g;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v1, v0}, Lcom/felicanetworks/gpaslib/GpasApduManager;->process(Lcom/felicanetworks/gpaslib/GpasApduCommand;)Lcom/felicanetworks/gpaslib/GpasApduResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getSw1Sw2()[B

    move-result-object v1

    sget-object v2, Lcom/felicanetworks/gpaslib/model/g;->e:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/g;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "card is not locked"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/g;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v0}, Lcom/felicanetworks/gpaslib/GpasApduManager;->close()V

    .line 102
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/g;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/felicanetworks/gpaslib/model/g;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "898110"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "issuer is not supported"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/g;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v1}, Lcom/felicanetworks/gpaslib/GpasApduManager;->close()V

    throw v0

    .line 98
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasException;->getID()I

    move-result v1

    if-ne v6, v1, :cond_1

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasException;->getType()I

    move-result v1

    if-ne v7, v1, :cond_1

    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x7

    const/4 v2, 0x5

    const-string v3, "GlobalPlatform Card Specification is not supported on this card"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    :cond_1
    throw v0

    .line 100
    :cond_2
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getSw1Sw2()[B

    move-result-object v0

    sget-object v1, Lcom/felicanetworks/gpaslib/model/g;->k:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x7

    const/4 v2, 0x6

    const-string v3, "card is locked"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x3

    const/16 v2, 0x9

    const-string v3, "unexpected SW1-SW2 has returned"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    .line 102
    :cond_4
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/model/g;->b:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/g;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/g;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    sget-object v1, Lcom/felicanetworks/gpaslib/model/g;->m:[B

    invoke-interface {v0, v1}, Lcom/felicanetworks/gpaslib/GpasApduManager;->open([B)V
    :try_end_4
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/g;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v0}, Lcom/felicanetworks/gpaslib/GpasApduManager;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 107
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/g;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v0}, Lcom/felicanetworks/gpaslib/GpasApduManager;->close()V

    .line 108
    return-void

    .line 104
    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasException;->getID()I

    move-result v1

    if-ne v6, v1, :cond_5

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasException;->getType()I

    move-result v1

    if-ne v7, v1, :cond_5

    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x7

    const/16 v2, 0x8

    const-string v3, "card has not been initialized"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    :cond_5
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method protected final d()Lcom/felicanetworks/gpaslib/model/c;
    .locals 3

    .prologue
    .line 516
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/g;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 517
    new-instance v0, Lcom/felicanetworks/gpaslib/model/d;

    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/g;->c:Lcom/felicanetworks/gpaslib/model/b;

    invoke-direct {v0, v1}, Lcom/felicanetworks/gpaslib/model/d;-><init>(Lcom/felicanetworks/gpaslib/model/b;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 497
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 498
    invoke-super {p0}, Lcom/felicanetworks/gpaslib/model/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    const-string v1, ",ClassName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 503
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 505
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

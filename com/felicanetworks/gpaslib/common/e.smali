.class public final Lcom/felicanetworks/gpaslib/common/e;
.super Lcom/felicanetworks/gpaslib/common/c;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private b:[B

.field private synthetic c:Lcom/felicanetworks/gpaslib/common/b;


# direct methods
.method constructor <init>(Lcom/felicanetworks/gpaslib/common/b;[B)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 353
    iput-object p1, p0, Lcom/felicanetworks/gpaslib/common/e;->c:Lcom/felicanetworks/gpaslib/common/b;

    invoke-direct {p0, p1}, Lcom/felicanetworks/gpaslib/common/c;-><init>(Lcom/felicanetworks/gpaslib/common/b;)V

    .line 345
    iput-object v6, p0, Lcom/felicanetworks/gpaslib/common/e;->b:[B

    .line 354
    iget-object v0, p1, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "aid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/felicanetworks/gpaslib/common/a;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v5, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 356
    if-nez p2, :cond_0

    .line 357
    iput-object v6, p0, Lcom/felicanetworks/gpaslib/common/e;->b:[B

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/common/e;->b:[B

    goto :goto_0
.end method

.method private b()Lorg/simalliance/openmobileapi/Channel;
    .locals 15

    .prologue
    const/16 v13, 0x17

    const/4 v12, 0x3

    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 413
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/e;->c:Lcom/felicanetworks/gpaslib/common/b;

    iget-object v0, v0, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v9, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 414
    const/4 v1, 0x0

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/e;->c:Lcom/felicanetworks/gpaslib/common/b;

    iget-object v0, v0, Lcom/felicanetworks/gpaslib/common/b;->b:Lcom/felicanetworks/gpaslib/model/f;

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/model/f;->b()Lorg/simalliance/openmobileapi/Session;

    move-result-object v0

    .line 419
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/common/e;->b:[B

    invoke-static {v2}, Lcom/felicanetworks/gpaslib/common/a;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 420
    iget-object v3, p0, Lcom/felicanetworks/gpaslib/common/e;->c:Lcom/felicanetworks/gpaslib/common/b;

    iget-object v3, v3, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v4, 0x3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "open AID = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 422
    iget-object v3, p0, Lcom/felicanetworks/gpaslib/common/e;->b:[B

    invoke-virtual {v0, v3}, Lorg/simalliance/openmobileapi/Session;->openLogicalChannel([B)Lorg/simalliance/openmobileapi/Channel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 423
    if-nez v0, :cond_0

    .line 424
    :try_start_1
    new-instance v1, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v2, 0x1

    const/16 v3, 0x17

    const-string v4, "Secure Element is unable to provide a new logical channel"

    invoke-direct {v1, v2, v3, v4}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    iput-object v1, p0, Lcom/felicanetworks/gpaslib/common/e;->a:Lcom/felicanetworks/gpaslib/GpasException;

    .line 456
    :goto_0
    return-object v0

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/common/e;->c:Lcom/felicanetworks/gpaslib/common/b;

    iget-object v1, v1, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v3, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LogicalChannel opened successfully AID = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v1, v3, v4}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    .line 431
    :catch_0
    move-exception v1

    .line 432
    :goto_1
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/common/e;->c:Lcom/felicanetworks/gpaslib/common/b;

    iget-object v2, v2, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "communication problem to the reader or the Secure Element"

    aput-object v4, v3, v10

    invoke-static {v2, v11, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 433
    new-instance v2, Lcom/felicanetworks/gpaslib/GpasException;

    invoke-direct {v2, v12, v13, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    iput-object v2, p0, Lcom/felicanetworks/gpaslib/common/e;->a:Lcom/felicanetworks/gpaslib/GpasException;

    goto :goto_0

    .line 435
    :catch_1
    move-exception v0

    move-object v14, v0

    move-object v0, v1

    move-object v1, v14

    .line 436
    :goto_2
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/common/e;->c:Lcom/felicanetworks/gpaslib/common/b;

    iget-object v2, v2, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "the Secure Element is used after being closed"

    aput-object v4, v3, v10

    invoke-static {v2, v11, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 437
    new-instance v2, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v3, 0x2

    const/16 v4, 0x16

    invoke-direct {v2, v3, v4, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    iput-object v2, p0, Lcom/felicanetworks/gpaslib/common/e;->a:Lcom/felicanetworks/gpaslib/GpasException;

    goto :goto_0

    .line 440
    :catch_2
    move-exception v0

    move-object v14, v0

    move-object v0, v1

    move-object v1, v14

    .line 441
    :goto_3
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/common/e;->c:Lcom/felicanetworks/gpaslib/common/b;

    iget-object v2, v2, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "calling application cannot be granted access to this AID or the default application on this session"

    aput-object v4, v3, v10

    invoke-static {v2, v11, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 442
    new-instance v2, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v3, 0x9

    invoke-direct {v2, v11, v3, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    iput-object v2, p0, Lcom/felicanetworks/gpaslib/common/e;->a:Lcom/felicanetworks/gpaslib/GpasException;

    goto :goto_0

    .line 445
    :catch_3
    move-exception v0

    move-object v14, v0

    move-object v0, v1

    move-object v1, v14

    .line 446
    :goto_4
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/common/e;->c:Lcom/felicanetworks/gpaslib/common/b;

    iget-object v2, v2, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "an Applet with the defined AID does not exist in the SE or a logical channel is already open to a non-multiselectable applet"

    aput-object v4, v3, v10

    invoke-static {v2, v11, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 447
    new-instance v2, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v3, 0x10

    const/16 v4, 0x14

    invoke-direct {v2, v3, v4, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    iput-object v2, p0, Lcom/felicanetworks/gpaslib/common/e;->a:Lcom/felicanetworks/gpaslib/GpasException;

    goto/16 :goto_0

    .line 450
    :catch_4
    move-exception v0

    move-object v14, v0

    move-object v0, v1

    move-object v1, v14

    .line 451
    :goto_5
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/common/e;->c:Lcom/felicanetworks/gpaslib/common/b;

    iget-object v2, v2, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "exception occurred during opening a channel"

    aput-object v4, v3, v10

    invoke-static {v2, v11, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 452
    new-instance v2, Lcom/felicanetworks/gpaslib/GpasException;

    invoke-direct {v2, v9, v9, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    iput-object v2, p0, Lcom/felicanetworks/gpaslib/common/e;->a:Lcom/felicanetworks/gpaslib/GpasException;

    goto/16 :goto_0

    .line 450
    :catch_5
    move-exception v1

    goto :goto_5

    .line 445
    :catch_6
    move-exception v1

    goto :goto_4

    .line 440
    :catch_7
    move-exception v1

    goto :goto_3

    .line 435
    :catch_8
    move-exception v1

    goto :goto_2

    .line 431
    :catch_9
    move-exception v0

    move-object v14, v0

    move-object v0, v1

    move-object v1, v14

    goto/16 :goto_1
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/felicanetworks/gpaslib/common/e;->b()Lorg/simalliance/openmobileapi/Channel;

    move-result-object v0

    return-object v0
.end method

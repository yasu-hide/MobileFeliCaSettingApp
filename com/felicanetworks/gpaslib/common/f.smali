.class public final Lcom/felicanetworks/gpaslib/common/f;
.super Lcom/felicanetworks/gpaslib/common/c;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private b:[B

.field private synthetic c:Lcom/felicanetworks/gpaslib/common/b;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/gpaslib/common/b;Lcom/felicanetworks/gpaslib/GpasApduCommand;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 527
    iput-object p1, p0, Lcom/felicanetworks/gpaslib/common/f;->c:Lcom/felicanetworks/gpaslib/common/b;

    invoke-direct {p0, p1}, Lcom/felicanetworks/gpaslib/common/c;-><init>(Lcom/felicanetworks/gpaslib/common/b;)V

    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/common/f;->b:[B

    .line 528
    iget-object v0, p1, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v3, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 531
    invoke-virtual {p2}, Lcom/felicanetworks/gpaslib/GpasApduCommand;->getCommand()[B

    move-result-object v0

    .line 532
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/common/f;->b:[B

    .line 533
    return-void
.end method

.method private b()Lcom/felicanetworks/gpaslib/GpasApduResponse;
    .locals 13

    .prologue
    const/16 v12, 0x9

    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 576
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/f;->c:Lcom/felicanetworks/gpaslib/common/b;

    iget-object v0, v0, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v8, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 577
    const/4 v1, 0x0

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/f;->c:Lcom/felicanetworks/gpaslib/common/b;

    iget-object v0, v0, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v2, 0x3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "transmit command = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/felicanetworks/gpaslib/common/f;->b:[B

    invoke-static {v6}, Lcom/felicanetworks/gpaslib/common/a;->a([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 583
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/f;->c:Lcom/felicanetworks/gpaslib/common/b;

    iget-object v0, v0, Lcom/felicanetworks/gpaslib/common/b;->c:Lorg/simalliance/openmobileapi/Channel;

    iget-object v2, p0, Lcom/felicanetworks/gpaslib/common/f;->b:[B

    invoke-virtual {v0, v2}, Lorg/simalliance/openmobileapi/Channel;->transmit([B)[B

    move-result-object v2

    .line 584
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/f;->c:Lcom/felicanetworks/gpaslib/common/b;

    iget-object v0, v0, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v3, 0x3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "response = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/felicanetworks/gpaslib/common/a;->a([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 586
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasApduResponse;

    invoke-direct {v0, v2}, Lcom/felicanetworks/gpaslib/GpasApduResponse;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 607
    :goto_0
    return-object v0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/common/f;->c:Lcom/felicanetworks/gpaslib/common/b;

    iget-object v2, v2, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "communication problem to the reader or the Secure Element"

    aput-object v4, v3, v9

    invoke-static {v2, v10, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 589
    new-instance v2, Lcom/felicanetworks/gpaslib/GpasException;

    invoke-direct {v2, v11, v12, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    iput-object v2, p0, Lcom/felicanetworks/gpaslib/common/f;->a:Lcom/felicanetworks/gpaslib/GpasException;

    move-object v0, v1

    .line 606
    goto :goto_0

    .line 591
    :catch_1
    move-exception v0

    .line 592
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/common/f;->c:Lcom/felicanetworks/gpaslib/common/b;

    iget-object v2, v2, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "the channel is used after being closed"

    aput-object v4, v3, v9

    invoke-static {v2, v10, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 593
    new-instance v2, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v3, 0x2

    const/16 v4, 0x18

    invoke-direct {v2, v3, v4, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    iput-object v2, p0, Lcom/felicanetworks/gpaslib/common/f;->a:Lcom/felicanetworks/gpaslib/GpasException;

    move-object v0, v1

    .line 606
    goto :goto_0

    .line 596
    :catch_2
    move-exception v0

    .line 597
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/common/f;->c:Lcom/felicanetworks/gpaslib/common/b;

    iget-object v2, v2, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "the command is filtered by the security policy"

    aput-object v4, v3, v9

    invoke-static {v2, v10, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 598
    new-instance v2, Lcom/felicanetworks/gpaslib/GpasException;

    invoke-direct {v2, v10, v12, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    iput-object v2, p0, Lcom/felicanetworks/gpaslib/common/f;->a:Lcom/felicanetworks/gpaslib/GpasException;

    move-object v0, v1

    .line 606
    goto :goto_0

    .line 601
    :catch_3
    move-exception v0

    .line 602
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/common/f;->c:Lcom/felicanetworks/gpaslib/common/b;

    iget-object v2, v2, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "exception occurred during processing an APDU command"

    aput-object v4, v3, v9

    invoke-static {v2, v10, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 603
    new-instance v2, Lcom/felicanetworks/gpaslib/GpasException;

    invoke-direct {v2, v8, v8, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    iput-object v2, p0, Lcom/felicanetworks/gpaslib/common/f;->a:Lcom/felicanetworks/gpaslib/GpasException;

    move-object v0, v1

    goto :goto_0
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
    .line 515
    invoke-direct {p0}, Lcom/felicanetworks/gpaslib/common/f;->b()Lcom/felicanetworks/gpaslib/GpasApduResponse;

    move-result-object v0

    return-object v0
.end method

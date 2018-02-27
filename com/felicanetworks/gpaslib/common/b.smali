.class public final Lcom/felicanetworks/gpaslib/common/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/felicanetworks/gpaslib/GpasApduManager;


# instance fields
.field protected a:Lcom/felicanetworks/gpaslib/model/b;

.field protected b:Lcom/felicanetworks/gpaslib/model/f;

.field protected c:Lorg/simalliance/openmobileapi/Channel;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/gpaslib/model/b;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    .line 48
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/common/b;->b:Lcom/felicanetworks/gpaslib/model/f;

    .line 51
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/common/b;->c:Lorg/simalliance/openmobileapi/Channel;

    .line 61
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p1, v2, v0}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 62
    iput-object p1, p0, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    .line 63
    invoke-virtual {p1}, Lcom/felicanetworks/gpaslib/model/b;->b()Lcom/felicanetworks/gpaslib/model/f;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/common/b;->b:Lcom/felicanetworks/gpaslib/model/f;

    .line 64
    return-void
.end method

.method private a(Lcom/felicanetworks/gpaslib/common/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 292
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/b;->b:Lcom/felicanetworks/gpaslib/model/f;

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/model/f;->getGpCardAccessTimeout()J

    move-result-wide v2

    .line 297
    new-instance v0, Ljava/util/concurrent/ExecutorCompletionService;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 298
    invoke-interface {v0, p1}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 300
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/CompletionService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 301
    invoke-virtual {p1}, Lcom/felicanetworks/gpaslib/common/c;->a()Lcom/felicanetworks/gpaslib/GpasException;

    move-result-object v2

    .line 302
    if-eqz v2, :cond_0

    .line 303
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v0

    .line 306
    :cond_0
    if-nez v0, :cond_1

    .line 308
    :try_start_1
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v2, 0x3

    const/16 v3, 0xc

    const-string v4, "GP card access timeout occurred"

    invoke-direct {v0, v2, v3, v4}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 311
    throw v0

    .line 314
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 316
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 318
    return-object v0
.end method

.method private a()Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 328
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 329
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/common/b;->c:Lorg/simalliance/openmobileapi/Channel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/felicanetworks/gpaslib/common/b;->c:Lorg/simalliance/openmobileapi/Channel;

    invoke-virtual {v2}, Lorg/simalliance/openmobileapi/Channel;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    :cond_0
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Channel is not opened"

    aput-object v4, v3, v0

    invoke-static {v2, v5, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    move v0, v1

    .line 334
    :goto_0
    return v0

    .line 333
    :cond_1
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Channel is opened"

    aput-object v3, v1, v0

    invoke-static {v2, v5, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 163
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 165
    :try_start_0
    invoke-direct {p0}, Lcom/felicanetworks/gpaslib/common/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/felicanetworks/gpaslib/common/d;

    invoke-direct {v0, p0}, Lcom/felicanetworks/gpaslib/common/d;-><init>(Lcom/felicanetworks/gpaslib/common/b;)V

    .line 168
    invoke-direct {p0, v0}, Lcom/felicanetworks/gpaslib/common/b;->a(Lcom/felicanetworks/gpaslib/common/c;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 181
    :cond_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v4, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 173
    throw v0

    .line 174
    :catch_1
    move-exception v0

    .line 175
    new-instance v1, Lcom/felicanetworks/gpaslib/GpasException;

    invoke-direct {v1, v2, v2, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    .line 179
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v0, v4, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 180
    throw v1
.end method

.method public final open([B)V
    .locals 7
    .param p1, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 103
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    aput-object v2, v1, v5

    invoke-static {v0, v4, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 106
    if-eqz p1, :cond_1

    .line 107
    array-length v0, p1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/16 v0, 0x10

    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AID format error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    throw v0

    .line 116
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/b;->b:Lcom/felicanetworks/gpaslib/model/f;

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/model/f;->b()Lorg/simalliance/openmobileapi/Session;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Session;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    :cond_2
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x2

    const/16 v2, 0x16

    const-string v3, "session is closed"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 122
    const/4 p1, 0x0

    throw v0
    :try_end_0
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v6, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 133
    throw v0

    .line 126
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/gpaslib/common/b;->close()V

    .line 129
    new-instance v0, Lcom/felicanetworks/gpaslib/common/e;

    invoke-direct {v0, p0, p1}, Lcom/felicanetworks/gpaslib/common/e;-><init>(Lcom/felicanetworks/gpaslib/common/b;[B)V

    .line 130
    invoke-direct {p0, v0}, Lcom/felicanetworks/gpaslib/common/b;->a(Lcom/felicanetworks/gpaslib/common/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simalliance/openmobileapi/Channel;

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/common/b;->c:Lorg/simalliance/openmobileapi/Channel;
    :try_end_1
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    return-void

    .line 134
    :catch_1
    move-exception v0

    .line 135
    new-instance v1, Lcom/felicanetworks/gpaslib/GpasException;

    invoke-direct {v1, v4, v4, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    .line 139
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-static {v0, v6, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 140
    throw v1
.end method

.method public final process(Lcom/felicanetworks/gpaslib/GpasApduCommand;)Lcom/felicanetworks/gpaslib/GpasApduResponse;
    .locals 7
    .param p1, "apduCommand"    # Lcom/felicanetworks/gpaslib/GpasApduCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 221
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {v0, v4, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 223
    if-nez p1, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "APDU command is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 226
    const/4 p1, 0x0

    throw v0

    .line 230
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/felicanetworks/gpaslib/common/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x2

    const/16 v2, 0x18

    const-string v3, "Channel is closed"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 235
    const/4 p1, 0x0

    throw v0
    :try_end_0
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v6, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 245
    throw v0

    .line 239
    :cond_1
    :try_start_1
    new-instance v0, Lcom/felicanetworks/gpaslib/common/f;

    invoke-direct {v0, p0, p1}, Lcom/felicanetworks/gpaslib/common/f;-><init>(Lcom/felicanetworks/gpaslib/common/b;Lcom/felicanetworks/gpaslib/GpasApduCommand;)V

    .line 240
    invoke-direct {p0, v0}, Lcom/felicanetworks/gpaslib/common/b;->a(Lcom/felicanetworks/gpaslib/common/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/gpaslib/GpasApduResponse;
    :try_end_1
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 242
    return-object v0

    .line 246
    :catch_1
    move-exception v0

    .line 247
    new-instance v1, Lcom/felicanetworks/gpaslib/GpasException;

    invoke-direct {v1, v4, v4, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    .line 251
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-static {v0, v6, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 252
    throw v1
.end method

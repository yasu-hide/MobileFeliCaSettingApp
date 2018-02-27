.class public final Lcom/felicanetworks/gpaslib/model/h;
.super Lcom/felicanetworks/gpaslib/model/f;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/gpaslib/model/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/felicanetworks/gpaslib/model/f;-><init>(Lcom/felicanetworks/gpaslib/model/b;)V

    .line 43
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 213
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/h;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/h;->c:Lcom/felicanetworks/gpaslib/model/b;

    iget-object v0, v0, Lcom/felicanetworks/gpaslib/model/b;->a:Landroid/content/Context;

    .line 216
    :try_start_0
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 220
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 231
    return-object v0

    .line 221
    :catch_0
    move-exception v0

    .line 223
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/h;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v2, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "uses-permission not defined"

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 224
    new-instance v1, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v2, 0x7

    const/16 v3, 0x2a

    invoke-direct {v1, v2, v3, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    .line 228
    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/h;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/h;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/h;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    sget-object v1, Lcom/felicanetworks/gpaslib/model/h;->d:[B

    invoke-interface {v0, v1}, Lcom/felicanetworks/gpaslib/GpasApduManager;->open([B)V
    :try_end_0
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/h;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v0}, Lcom/felicanetworks/gpaslib/GpasApduManager;->close()V

    .line 67
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/h;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/felicanetworks/gpaslib/model/h;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "898120"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const-string v1, "issuer is not supported"

    invoke-direct {v0, v4, v4, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    .line 65
    :catch_0
    move-exception v0

    const/16 v1, 0x10

    :try_start_1
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasException;->getID()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/16 v1, 0x14

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasException;->getType()I

    move-result v2

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x7

    const/4 v2, 0x5

    const-string v3, "GlobalPlatform Card Specification is not supported on this card"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/h;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v1}, Lcom/felicanetworks/gpaslib/GpasApduManager;->close()V

    throw v0

    :cond_1
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :cond_2
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/model/h;->b:Ljava/lang/String;

    .line 68
    return-void
.end method

.method protected final d()Lcom/felicanetworks/gpaslib/model/c;
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/h;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 258
    new-instance v0, Lcom/felicanetworks/gpaslib/model/e;

    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/h;->c:Lcom/felicanetworks/gpaslib/model/b;

    invoke-direct {v0, v1}, Lcom/felicanetworks/gpaslib/model/e;-><init>(Lcom/felicanetworks/gpaslib/model/b;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 275
    invoke-super {p0}, Lcom/felicanetworks/gpaslib/model/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    const-string v1, ",ClassName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 280
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

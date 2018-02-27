.class public final Lcom/felicanetworks/gpaslib/common/d;
.super Lcom/felicanetworks/gpaslib/common/c;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic b:Lcom/felicanetworks/gpaslib/common/b;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/gpaslib/common/b;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/felicanetworks/gpaslib/common/d;->b:Lcom/felicanetworks/gpaslib/common/b;

    invoke-direct {p0, p1}, Lcom/felicanetworks/gpaslib/common/c;-><init>(Lcom/felicanetworks/gpaslib/common/b;)V

    return-void
.end method

.method private b()Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 495
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/common/d;->b:Lcom/felicanetworks/gpaslib/common/b;

    iget-object v1, v1, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v6, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 498
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/common/d;->b:Lcom/felicanetworks/gpaslib/common/b;

    iget-object v1, v1, Lcom/felicanetworks/gpaslib/common/b;->c:Lorg/simalliance/openmobileapi/Channel;

    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/Channel;->close()V

    .line 499
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/common/d;->b:Lcom/felicanetworks/gpaslib/common/b;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/felicanetworks/gpaslib/common/b;->c:Lorg/simalliance/openmobileapi/Channel;

    .line 500
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 507
    :goto_0
    return-object v0

    .line 501
    :catch_0
    move-exception v1

    .line 502
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/common/d;->b:Lcom/felicanetworks/gpaslib/common/b;

    iget-object v2, v2, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v3, 0x4

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "exception occurred during closing a channel"

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 503
    new-instance v2, Lcom/felicanetworks/gpaslib/GpasException;

    invoke-direct {v2, v6, v6, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    iput-object v2, p0, Lcom/felicanetworks/gpaslib/common/d;->a:Lcom/felicanetworks/gpaslib/GpasException;

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
    .line 464
    invoke-direct {p0}, Lcom/felicanetworks/gpaslib/common/d;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/felicanetworks/gpaslib/model/d;
.super Lcom/felicanetworks/gpaslib/model/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/felicanetworks/gpaslib/model/b;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 32
    invoke-direct {p0, p1}, Lcom/felicanetworks/gpaslib/model/c;-><init>(Lcom/felicanetworks/gpaslib/model/b;)V

    .line 33
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p1, v2, v0}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final exclusiveActivate([B)V
    .locals 7
    .param p1, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 87
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/d;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/felicanetworks/gpaslib/common/a;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v4, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/d;->a:Lcom/felicanetworks/gpaslib/model/b;

    invoke-static {p1, v0}, Lcom/felicanetworks/gpaslib/common/a;->a([BLcom/felicanetworks/gpaslib/model/b;)V

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/d;->b:Lcom/felicanetworks/gpaslib/model/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/d;->b:Lcom/felicanetworks/gpaslib/model/f;

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/model/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x2

    const/16 v2, 0x16

    const-string v3, "session is closed"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 100
    throw v0
    :try_end_0
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/d;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v6, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 119
    throw v0

    .line 104
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/d;->b:Lcom/felicanetworks/gpaslib/model/f;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/gpaslib/model/f;->getGpasContactlessService([B)Lcom/felicanetworks/gpaslib/GpasContactlessService;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasContactlessService;->getServiceType()I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 108
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0xc

    const/16 v2, 0x19

    const-string v3, "service type must be \'payment\'"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 112
    const/4 p1, 0x0

    throw v0
    :try_end_1
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    :catch_1
    move-exception v0

    .line 121
    new-instance v1, Lcom/felicanetworks/gpaslib/GpasException;

    invoke-direct {v1, v4, v4, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    .line 125
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/d;->a:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-static {v0, v6, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 126
    throw v1

    .line 116
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/felicanetworks/gpaslib/model/d;->a([B)V
    :try_end_2
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 127
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    invoke-super {p0}, Lcom/felicanetworks/gpaslib/model/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const-string v1, ",ClassName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

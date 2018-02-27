.class public Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreateProcess;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/felicanetworks/gpaslib/Gpas;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/gpaslib/Gpas;)V
    .locals 0

    .prologue
    .line 996
    iput-object p1, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreateProcess;->a:Lcom/felicanetworks/gpaslib/Gpas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x7d0

    const/4 v6, 0x0

    .line 1003
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreateProcess;->a:Lcom/felicanetworks/gpaslib/Gpas;

    iget-object v0, v0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/model/b;->g()Lcom/felicanetworks/gpaslib/GpasEventListener;

    move-result-object v1

    .line 1006
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreateProcess;->a:Lcom/felicanetworks/gpaslib/Gpas;

    iget-object v0, v0, Lcom/felicanetworks/gpaslib/Gpas;->c:Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreator;

    iget-object v2, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreateProcess;->a:Lcom/felicanetworks/gpaslib/Gpas;

    iget-object v2, v2, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v2}, Lcom/felicanetworks/gpaslib/model/b;->e()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreateProcess;->a:Lcom/felicanetworks/gpaslib/Gpas;

    iget-object v3, v3, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v3}, Lcom/felicanetworks/gpaslib/model/b;->f()J

    move-result-wide v3

    iget-object v5, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreateProcess;->a:Lcom/felicanetworks/gpaslib/Gpas;

    iget-object v5, v5, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreator;->getSEService(Landroid/content/Context;JLcom/felicanetworks/gpaslib/model/b;)V

    .line 1008
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreateProcess;->a:Lcom/felicanetworks/gpaslib/Gpas;

    invoke-interface {v1, v0}, Lcom/felicanetworks/gpaslib/GpasEventListener;->finished(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreateProcess;->a:Lcom/felicanetworks/gpaslib/Gpas;

    iget-object v0, v0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v0, v7, v8}, Lcom/felicanetworks/gpaslib/model/b;->b(J)V

    .line 1022
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreateProcess;->a:Lcom/felicanetworks/gpaslib/Gpas;

    iget-object v0, v0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v0, v6}, Lcom/felicanetworks/gpaslib/model/b;->a(Lcom/felicanetworks/gpaslib/GpasEventListener;)V

    .line 1023
    :goto_0
    return-void

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    :try_start_1
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreateProcess;->a:Lcom/felicanetworks/gpaslib/Gpas;

    iget-object v2, v2, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 1011
    invoke-interface {v1, v0}, Lcom/felicanetworks/gpaslib/GpasEventListener;->errorOccurred(Lcom/felicanetworks/gpaslib/GpasException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1021
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreateProcess;->a:Lcom/felicanetworks/gpaslib/Gpas;

    iget-object v0, v0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v0, v7, v8}, Lcom/felicanetworks/gpaslib/model/b;->b(J)V

    .line 1022
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreateProcess;->a:Lcom/felicanetworks/gpaslib/Gpas;

    iget-object v0, v0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v0, v6}, Lcom/felicanetworks/gpaslib/model/b;->a(Lcom/felicanetworks/gpaslib/GpasEventListener;)V

    goto :goto_0

    .line 1012
    :catch_1
    move-exception v0

    .line 1013
    :try_start_2
    new-instance v2, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    .line 1017
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreateProcess;->a:Lcom/felicanetworks/gpaslib/Gpas;

    iget-object v0, v0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v0, v3, v4}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 1018
    invoke-interface {v1, v2}, Lcom/felicanetworks/gpaslib/GpasEventListener;->errorOccurred(Lcom/felicanetworks/gpaslib/GpasException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1021
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreateProcess;->a:Lcom/felicanetworks/gpaslib/Gpas;

    iget-object v0, v0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v0, v7, v8}, Lcom/felicanetworks/gpaslib/model/b;->b(J)V

    .line 1022
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreateProcess;->a:Lcom/felicanetworks/gpaslib/Gpas;

    iget-object v0, v0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v0, v6}, Lcom/felicanetworks/gpaslib/model/b;->a(Lcom/felicanetworks/gpaslib/GpasEventListener;)V

    goto :goto_0

    .line 1021
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreateProcess;->a:Lcom/felicanetworks/gpaslib/Gpas;

    iget-object v1, v1, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v1, v7, v8}, Lcom/felicanetworks/gpaslib/model/b;->b(J)V

    .line 1022
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreateProcess;->a:Lcom/felicanetworks/gpaslib/Gpas;

    iget-object v1, v1, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v1, v6}, Lcom/felicanetworks/gpaslib/model/b;->a(Lcom/felicanetworks/gpaslib/GpasEventListener;)V

    throw v0
.end method

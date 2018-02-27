.class public Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simalliance/openmobileapi/SEService$CallBack;


# instance fields
.field private a:Lcom/felicanetworks/gpaslib/model/b;

.field private synthetic b:Lcom/felicanetworks/gpaslib/Gpas;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/gpaslib/Gpas;)V
    .locals 1

    .prologue
    .line 866
    iput-object p1, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreator;->b:Lcom/felicanetworks/gpaslib/Gpas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreator;->a:Lcom/felicanetworks/gpaslib/model/b;

    return-void
.end method


# virtual methods
.method public declared-synchronized getSEService(Landroid/content/Context;JLcom/felicanetworks/gpaslib/model/b;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gpasLibInitTimeout"    # J
    .param p4, "gpasContainer"    # Lcom/felicanetworks/gpaslib/model/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 914
    monitor-enter p0

    :try_start_0
    iput-object p4, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreator;->a:Lcom/felicanetworks/gpaslib/model/b;

    .line 916
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreator;->a:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "gpasLibInitTimeout = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "gpasContainer = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreator;->a:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    cmp-long v2, p2, v0

    if-gez v2, :cond_2

    .line 928
    :try_start_1
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreator;->a:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v3, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "specified timeout "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is less than minimum value 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    move-wide p2, v0

    .line 934
    .end local p2    # "gpasLibInitTimeout":J
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreator;->a:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v3, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "set timeout = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 938
    new-instance v2, Lorg/simalliance/openmobileapi/SEService;

    invoke-direct {v2, p1, p0}, Lorg/simalliance/openmobileapi/SEService;-><init>(Landroid/content/Context;Lorg/simalliance/openmobileapi/SEService$CallBack;)V

    .line 941
    cmp-long v0, v0, p2

    if-eqz v0, :cond_1

    .line 942
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreator;->b:Lcom/felicanetworks/gpaslib/Gpas;

    iget-object v0, v0, Lcom/felicanetworks/gpaslib/Gpas;->a:Lorg/simalliance/openmobileapi/SEService;

    if-nez v0, :cond_3

    .line 946
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x3

    const/16 v2, 0xb

    const-string v3, "SEService creation timeout occurred"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 950
    throw v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 952
    :catch_0
    move-exception v0

    .line 954
    :try_start_2
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreator;->a:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v2, 0x4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "uses-permission not defined"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 955
    new-instance v1, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v2, 0x5

    const/16 v3, 0x2a

    invoke-direct {v1, v2, v3, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    .line 959
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 914
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 930
    .restart local p2    # "gpasLibInitTimeout":J
    :cond_2
    const-wide/32 v2, 0xea60

    cmp-long v2, v2, p2

    if-gez v2, :cond_0

    .line 931
    :try_start_3
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreator;->a:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v3, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "specified timeout "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is greater than maximum value 60000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 932
    const-wide/32 p2, 0xea60

    goto/16 :goto_0

    .line 960
    .end local p2    # "gpasLibInitTimeout":J
    :catch_1
    move-exception v0

    .line 962
    :try_start_4
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreator;->a:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v2, 0x4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "interruption occurred during creating SEService"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 963
    new-instance v1, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v2, 0x5

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    .line 967
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 968
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized serviceConnected(Lorg/simalliance/openmobileapi/SEService;)V
    .locals 5
    .param p1, "service"    # Lorg/simalliance/openmobileapi/SEService;

    .prologue
    .line 984
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreator;->a:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 985
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreator;->a:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "SEService connected"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 986
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreator;->b:Lcom/felicanetworks/gpaslib/Gpas;

    iput-object p1, v0, Lcom/felicanetworks/gpaslib/Gpas;->a:Lorg/simalliance/openmobileapi/SEService;

    .line 987
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    monitor-exit p0

    return-void

    .line 984
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

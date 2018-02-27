.class Lcom/felicanetworks/mfc/FSC$1;
.super Lcom/felicanetworks/mfc/IFSCEventListener$Stub;
.source "FSC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/FSC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfc/FSC;


# direct methods
.method constructor <init>(Lcom/felicanetworks/mfc/FSC;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/felicanetworks/mfc/FSC$1;->this$0:Lcom/felicanetworks/mfc/FSC;

    .line 148
    invoke-direct {p0}, Lcom/felicanetworks/mfc/IFSCEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public errorOccurred(ILjava/lang/String;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 198
    const-string v2, "%s type:%d, message:%s"

    new-array v3, v11, [Ljava/lang/Object;

    const-string v4, "000"

    aput-object v4, v3, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    aput-object p2, v3, v10

    invoke-static {v11, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 200
    const/4 v1, 0x0

    .line 204
    .local v1, "listener":Lcom/felicanetworks/mfc/FSCEventListener;
    :try_start_0
    iget-object v3, p0, Lcom/felicanetworks/mfc/FSC$1;->this$0:Lcom/felicanetworks/mfc/FSC;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :try_start_1
    iget-object v2, p0, Lcom/felicanetworks/mfc/FSC$1;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v2}, Lcom/felicanetworks/mfc/FSC;->access$0(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/FSCEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 206
    const/4 v2, 0x7

    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "001"

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 207
    iget-object v2, p0, Lcom/felicanetworks/mfc/FSC$1;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v2}, Lcom/felicanetworks/mfc/FSC;->access$0(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/FSCEventListener;

    move-result-object v1

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/felicanetworks/mfc/FSC$1;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v2}, Lcom/felicanetworks/mfc/FSC;->access$1(Lcom/felicanetworks/mfc/FSC;)V

    .line 204
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    if-nez v1, :cond_1

    .line 214
    const/4 v2, 0x7

    :try_start_2
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "002"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 230
    :goto_0
    const-string v2, "%s"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "999"

    aput-object v4, v3, v8

    invoke-static {v11, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 232
    return-void

    .line 204
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "%s msg:%s"

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "700"

    aput-object v4, v3, v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v10, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x7

    :try_start_5
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "003"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 220
    const/16 v2, 0x64

    if-ne p1, v2, :cond_2

    .line 221
    const/4 v2, 0x7

    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "004"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 223
    :cond_2
    const/4 v2, 0x7

    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "005"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 224
    invoke-interface {v1, p1, p2}, Lcom/felicanetworks/mfc/FSCEventListener;->errorOccurred(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method

.method public finished(I)V
    .locals 12
    .param p1, "status"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 160
    const-string v2, "%s status:%d"

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "000"

    aput-object v4, v3, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v11, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 162
    const/4 v1, 0x0

    .line 166
    .local v1, "listener":Lcom/felicanetworks/mfc/FSCEventListener;
    :try_start_0
    iget-object v3, p0, Lcom/felicanetworks/mfc/FSC$1;->this$0:Lcom/felicanetworks/mfc/FSC;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :try_start_1
    iget-object v2, p0, Lcom/felicanetworks/mfc/FSC$1;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v2}, Lcom/felicanetworks/mfc/FSC;->access$0(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/FSCEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 168
    const/4 v2, 0x7

    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "001"

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget-object v2, p0, Lcom/felicanetworks/mfc/FSC$1;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v2}, Lcom/felicanetworks/mfc/FSC;->access$0(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/FSCEventListener;

    move-result-object v1

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/felicanetworks/mfc/FSC$1;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v2}, Lcom/felicanetworks/mfc/FSC;->access$1(Lcom/felicanetworks/mfc/FSC;)V

    .line 166
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    if-nez v1, :cond_1

    .line 176
    const/4 v2, 0x7

    :try_start_2
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "002"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 185
    :goto_0
    const-string v2, "%s"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "999"

    aput-object v4, v3, v8

    invoke-static {v11, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 186
    return-void

    .line 166
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "%s msg:%s"

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "700"

    aput-object v4, v3, v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v10, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x7

    :try_start_5
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "003"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-interface {v1, p1}, Lcom/felicanetworks/mfc/FSCEventListener;->finished(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method

.method public operationRequested(ILjava/lang/String;[B)V
    .locals 12
    .param p1, "deviceID"    # I
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 259
    const-string v3, "%s DIB:%d param:%s data:%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "020"

    aput-object v5, v4, v10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    aput-object p2, v4, v8

    aput-object p3, v4, v9

    invoke-static {v9, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 263
    :try_start_0
    iget-object v3, p0, Lcom/felicanetworks/mfc/FSC$1;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v3}, Lcom/felicanetworks/mfc/FSC;->access$0(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/FSCEventListener;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/felicanetworks/mfc/FSCEventListener;->operationRequested(ILjava/lang/String;[B)[B

    move-result-object v2

    .line 266
    .local v2, "result":[B
    const/4 v3, 0x3

    const-string v4, "%s %s:%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "020"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Client operation is completed"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 268
    :try_start_1
    iget-object v3, p0, Lcom/felicanetworks/mfc/FSC$1;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v3}, Lcom/felicanetworks/mfc/FSC;->access$2(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/IFSC;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/felicanetworks/mfc/IFSC;->notifyResult([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    .end local v2    # "result":[B
    :goto_0
    const-string v3, "%s"

    new-array v4, v11, [Ljava/lang/Object;

    const-string v5, "999"

    aput-object v5, v4, v10

    invoke-static {v9, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 282
    return-void

    .line 269
    .restart local v2    # "result":[B
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    :try_start_2
    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "700"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Remote Access failed"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 272
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "result":[B
    :catch_1
    move-exception v0

    .line 274
    .local v0, "clientError":Ljava/lang/Exception;
    const-string v3, "%s %s:%s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "020"

    aput-object v5, v4, v10

    const-string v5, "Client operation is failed"

    aput-object v5, v4, v11

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v9, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 276
    :try_start_3
    iget-object v3, p0, Lcom/felicanetworks/mfc/FSC$1;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v3}, Lcom/felicanetworks/mfc/FSC;->access$2(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/IFSC;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/felicanetworks/mfc/IFSC;->notifyError(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 277
    :catch_2
    move-exception v1

    .line 278
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "%s %s"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "701"

    aput-object v5, v4, v10

    const-string v5, "Remote Access failed"

    aput-object v5, v4, v11

    invoke-static {v8, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.class Lcom/felicanetworks/mfc/MfcUtil;
.super Ljava/lang/Object;
.source "MfcUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V
    .locals 8
    .param p0, "result"    # Lcom/felicanetworks/mfc/FelicaResultInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 27
    const-string v0, "%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 28
    if-nez p0, :cond_0

    .line 30
    const-string v0, "%s %s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "704"

    aput-object v2, v1, v3

    const-string v2, "Result is null!"

    aput-object v2, v1, v5

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 31
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Illegal Response"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    const-string v0, "%s %d"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "002"

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FelicaResultInfo;->getExceptionType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FelicaResultInfo;->getExceptionType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 56
    const-string v0, "%s %s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "703"

    aput-object v2, v1, v3

    const-string v2, "Illegal ExceptionType"

    aput-object v2, v1, v5

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 57
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unknown error."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :sswitch_0
    const-string v0, "%s %s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "701"

    aput-object v2, v1, v3

    const-string v2, "FelicaException"

    aput-object v2, v1, v5

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 41
    const-string v0, "id:%d type:%d appId:%d flg1:%d flg2:%d "

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FelicaResultInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FelicaResultInfo;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FelicaResultInfo;->getOtherAppInfo()Lcom/felicanetworks/mfc/AppInfo;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FelicaResultInfo;->getStatusFlag1()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FelicaResultInfo;->getStatusFlag2()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FelicaResultInfo;->getId()I

    move-result v1

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FelicaResultInfo;->getType()I

    move-result v2

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FelicaResultInfo;->getOtherAppInfo()Lcom/felicanetworks/mfc/AppInfo;

    move-result-object v3

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FelicaResultInfo;->getStatusFlag1()I

    move-result v4

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FelicaResultInfo;->getStatusFlag2()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IILcom/felicanetworks/mfc/AppInfo;II)V

    throw v0

    .line 47
    :sswitch_1
    const-string v0, "%s %s %s"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "702"

    aput-object v2, v1, v3

    const-string v2, "IllegalArgumentException"

    aput-object v2, v1, v5

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FelicaResultInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FelicaResultInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :sswitch_2
    const-string v0, "%s %s %s"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "704"

    aput-object v2, v1, v3

    const-string v2, "NumberFormatException"

    aput-object v2, v1, v5

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FelicaResultInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 53
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 60
    :sswitch_3
    const-string v0, "%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 61
    return-void

    .line 35
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_0
        0x20 -> :sswitch_1
        0x22 -> :sswitch_2
    .end sparse-switch
.end method

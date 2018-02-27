.class public Lcom/felicanetworks/cmnctrl/net/DataParser;
.super Ljava/lang/Object;
.source "DataParser.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# static fields
.field public static final COM_DATA_LENGTH:I = 0x8

.field public static final CONNECT_TYPE_POST:Ljava/lang/String; = "POST"

.field public static final CONTENT_LENGTH_KEY:Ljava/lang/String; = "content-length"

.field public static final CONTENT_TYPE_KEY:Ljava/lang/String; = "content-type"

.field public static final CONTENT_TYPE_VALUE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final USER_AGENT_KEY:Ljava/lang/String; = "user-agent"


# instance fields
.field protected context:Lcom/felicanetworks/cmnlib/AppContext;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/cmnlib/AppContext;)V
    .locals 0
    .param p1, "context"    # Lcom/felicanetworks/cmnlib/AppContext;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/felicanetworks/cmnctrl/net/DataParser;->context:Lcom/felicanetworks/cmnlib/AppContext;

    .line 62
    return-void
.end method


# virtual methods
.method protected createDataParseException(Ljava/lang/Exception;ZI)Lcom/felicanetworks/cmnctrl/net/DataParseException;
    .locals 5
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "flg"    # Z
    .param p3, "pos"    # I

    .prologue
    const/4 v4, 0x2

    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, "exp":Lcom/felicanetworks/cmnctrl/net/DataParseException;
    if-eqz p2, :cond_2

    .line 211
    instance-of v2, p1, Lcom/felicanetworks/cmnlib/util/DataCheckerException;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 215
    check-cast v2, Lcom/felicanetworks/cmnlib/util/DataCheckerException;

    invoke-virtual {v2}, Lcom/felicanetworks/cmnlib/util/DataCheckerException;->getErrorId()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 217
    .local v0, "errId":I
    :goto_0
    new-instance v1, Lcom/felicanetworks/cmnctrl/net/DataParseException;

    .end local v1    # "exp":Lcom/felicanetworks/cmnctrl/net/DataParseException;
    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/net/DataParser;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v2, v2, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, p1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lcom/felicanetworks/cmnctrl/net/DataParseException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 244
    .end local v0    # "errId":I
    .restart local v1    # "exp":Lcom/felicanetworks/cmnctrl/net/DataParseException;
    :goto_1
    return-object v1

    .line 215
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 222
    :cond_1
    new-instance v1, Lcom/felicanetworks/cmnctrl/net/DataParseException;

    .end local v1    # "exp":Lcom/felicanetworks/cmnctrl/net/DataParseException;
    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/net/DataParser;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v2, v2, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, p1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, p1, v2, v3}, Lcom/felicanetworks/cmnctrl/net/DataParseException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    .restart local v1    # "exp":Lcom/felicanetworks/cmnctrl/net/DataParseException;
    goto :goto_1

    .line 228
    :cond_2
    if-eqz p3, :cond_3

    .line 233
    new-instance v1, Lcom/felicanetworks/cmnctrl/net/DataParseException;

    .end local v1    # "exp":Lcom/felicanetworks/cmnctrl/net/DataParseException;
    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/net/DataParser;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v2, v2, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, p1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3, v4}, Lcom/felicanetworks/cmnctrl/net/DataParseException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;II)V

    .restart local v1    # "exp":Lcom/felicanetworks/cmnctrl/net/DataParseException;
    goto :goto_1

    .line 238
    :cond_3
    new-instance v1, Lcom/felicanetworks/cmnctrl/net/DataParseException;

    .end local v1    # "exp":Lcom/felicanetworks/cmnctrl/net/DataParseException;
    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/net/DataParser;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v2, v2, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, p1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, v4}, Lcom/felicanetworks/cmnctrl/net/DataParseException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    .restart local v1    # "exp":Lcom/felicanetworks/cmnctrl/net/DataParseException;
    goto :goto_1
.end method

.method public createErrorLog(Ljava/lang/String;Ljava/lang/String;)Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;
    .locals 13
    .param p1, "logMsg"    # Ljava/lang/String;
    .param p2, "idmData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnctrl/net/DataParseException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 88
    .local v0, "reqData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ai="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v11, p0, Lcom/felicanetworks/cmnctrl/net/DataParser;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v11, v11, Lcom/felicanetworks/cmnlib/AppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    invoke-virtual {v11}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getAppId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, "appId":Ljava/lang/String;
    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/net/DataParser;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v2, v2, Lcom/felicanetworks/cmnlib/AppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const v11, 0x1000016

    invoke-virtual {v2, v11}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    .local v1, "logUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/net/DataParser;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v2, v2, Lcom/felicanetworks/cmnlib/AppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const v11, 0x1000017

    invoke-virtual {v2, v11}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 94
    .local v4, "sessionTimeOut":I
    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/net/DataParser;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v2, v2, Lcom/felicanetworks/cmnlib/AppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const v11, 0x1000034

    invoke-virtual {v2, v11}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 96
    .local v5, "logTimeOut":I
    new-instance v2, Lcom/felicanetworks/cmnctrl/packages/PackageAccess;

    iget-object v11, p0, Lcom/felicanetworks/cmnctrl/net/DataParser;->context:Lcom/felicanetworks/cmnlib/AppContext;

    invoke-direct {v2, v11}, Lcom/felicanetworks/cmnctrl/packages/PackageAccess;-><init>(Lcom/felicanetworks/cmnlib/AppContext;)V

    invoke-virtual {v2}, Lcom/felicanetworks/cmnctrl/packages/PackageAccess;->getAppVersionInfo()Lcom/felicanetworks/cmnctrl/data/VersionInformationData;

    move-result-object v2

    iget-object v8, v2, Lcom/felicanetworks/cmnctrl/data/VersionInformationData;->versionName:Ljava/lang/String;

    .line 98
    .local v8, "appVersion":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v11, 0x8

    invoke-static {v2, v11}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkLessEqualLength(II)V

    .line 100
    invoke-static {v8}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkAlphaSignFormat(Ljava/lang/String;)V

    .line 103
    if-eqz p2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "&av="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "&d="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 106
    .local v10, "sendData":Ljava/lang/String;
    :goto_0
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 109
    .local v6, "sendDataByte":[B
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "user-agent"

    iget-object v11, p0, Lcom/felicanetworks/cmnctrl/net/DataParser;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v11, v11, Lcom/felicanetworks/cmnlib/AppContext;->userAgent:Ljava/lang/String;

    invoke-interface {v3, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v2, "content-length"

    array-length v11, v6

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v2, "content-type"

    const-string v11, "application/x-www-form-urlencoded"

    invoke-interface {v3, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;

    .end local v0    # "reqData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;
    const-string v2, "POST"

    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II[B)V

    .line 125
    .restart local v0    # "reqData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;
    return-object v0

    .line 103
    .end local v3    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "sendDataByte":[B
    .end local v10    # "sendData":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "&av="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "&idm="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "&d="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto :goto_0

    .line 116
    .end local v0    # "reqData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;
    .end local v1    # "logUrl":Ljava/lang/String;
    .end local v4    # "sessionTimeOut":I
    .end local v5    # "logTimeOut":I
    .end local v7    # "appId":Ljava/lang/String;
    .end local v8    # "appVersion":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 120
    .local v9, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/felicanetworks/cmnctrl/net/DataParseException;

    iget-object v11, p0, Lcom/felicanetworks/cmnctrl/net/DataParser;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v11, v11, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v12, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v11, v12, p0, v9}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-direct {v2, v9, v11, v12}, Lcom/felicanetworks/cmnctrl/net/DataParseException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    throw v2
.end method

.method public getClassCode()I
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x2

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x4

    return v0
.end method

.method public parseErrorLog(Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;)Z
    .locals 2
    .param p1, "data"    # Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;

    .prologue
    .line 147
    iget v0, p1, Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;->code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

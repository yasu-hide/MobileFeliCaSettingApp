.class public Lcom/felicanetworks/mfsctrl/net/MfsDataParser;
.super Lcom/felicanetworks/cmnctrl/net/DataParser;
.source "MfsDataParser.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# static fields
.field private static final COMMUNICATION_OK:I = 0xc8

.field private static final CONTENTS_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final DOUBLE_QUOTATION:C = '\"'

.field private static final HEADER_CONTENTLENGTH:Ljava/lang/String; = "content-length"

.field private static final HEADER_CONTENTTYPE:Ljava/lang/String; = "content-type"

.field private static final HEADER_USERAGENT:Ljava/lang/String; = "User-Agent"

.field private static final KEY_AUTHFINISHCODE:Ljava/lang/String; = "authfincode"

.field private static final KEY_DATA_SEPARATOR:Ljava/lang/String; = ": "

.field private static final KEY_RESPNSECODE:Ljava/lang/String; = "rescode"

.field private static final KEY_STARTURL:Ljava/lang/String; = "surl"

.field private static final RESCODE_NG:Ljava/lang/String; = "NG"

.field private static final RESCODE_OK:Ljava/lang/String; = "OK"

.field private static final SIZE_AUTHFINISHCODE:I = 0x4

.field private static final SIZE_RESPNSECODE:I = 0x2


# instance fields
.field private _context:Lcom/felicanetworks/mfslib/MfsAppContext;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfslib/MfsAppContext;)V
    .locals 1
    .param p1, "context"    # Lcom/felicanetworks/mfslib/MfsAppContext;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnctrl/net/DataParser;-><init>(Lcom/felicanetworks/cmnlib/AppContext;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/net/MfsDataParser;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    .line 77
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/net/MfsDataParser;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    .line 81
    return-void
.end method

.method private getAuthData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0x22

    const/4 v6, -0x1

    .line 354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "header":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-object v2

    .line 366
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 367
    .local v3, "startPos":I
    invoke-virtual {p2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 369
    .local v0, "endPos":I
    if-eq v6, v3, :cond_0

    if-eq v6, v0, :cond_0

    if-eq v3, v0, :cond_0

    .line 375
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "output":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public createAuthQuerryData([B)Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;
    .locals 12
    .param p1, "ticket"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnctrl/net/DataParseException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    .line 100
    if-nez p1, :cond_0

    .line 104
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "ticket is null"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/felicanetworks/cmnlib/sg/SgMgrException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    :catch_0
    move-exception v8

    .line 132
    .local v8, "e":Lcom/felicanetworks/cmnlib/sg/SgMgrException;
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/net/MfsDataParser;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v0, v4, p0, v8}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    .line 133
    .local v9, "errorId":Ljava/lang/String;
    new-instance v0, Lcom/felicanetworks/cmnctrl/net/DataParseException;

    invoke-direct {v0, v8, v9, v11}, Lcom/felicanetworks/cmnctrl/net/DataParseException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    throw v0

    .line 107
    .end local v8    # "e":Lcom/felicanetworks/cmnlib/sg/SgMgrException;
    .end local v9    # "errorId":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v2, "POST"

    .line 108
    .local v2, "connectType":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/net/MfsDataParser;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const/16 v4, 0x19

    invoke-virtual {v0, v4}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    .local v1, "url":Ljava/lang/String;
    const-string v0, "User-Agent"

    iget-object v4, p0, Lcom/felicanetworks/mfsctrl/net/MfsDataParser;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v4, v4, Lcom/felicanetworks/mfslib/MfsAppContext;->userAgent:Ljava/lang/String;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v0, "content-type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v0, "content-length"

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/net/MfsDataParser;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const/16 v4, 0x1a

    invoke-virtual {v0, v4}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 121
    .local v7, "connTimeOut":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/net/MfsDataParser;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const/16 v4, 0x33

    invoke-virtual {v0, v4}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 126
    .local v10, "readTimeOut":Ljava/lang/Integer;
    new-instance v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II[B)V
    :try_end_1
    .catch Lcom/felicanetworks/cmnlib/sg/SgMgrException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 134
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "connectType":Ljava/lang/String;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "connTimeOut":Ljava/lang/Integer;
    .end local v10    # "readTimeOut":Ljava/lang/Integer;
    :catch_1
    move-exception v8

    .line 138
    .local v8, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/net/MfsDataParser;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v0, v4, p0, v8}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    .line 139
    .restart local v9    # "errorId":Ljava/lang/String;
    new-instance v0, Lcom/felicanetworks/cmnctrl/net/DataParseException;

    invoke-direct {v0, v8, v9, v11}, Lcom/felicanetworks/cmnctrl/net/DataParseException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    throw v0
.end method

.method public getClassCode()I
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 385
    const/16 v0, 0x23

    return v0
.end method

.method public parseAuthResponseData(Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;)Lcom/felicanetworks/mfsctrl/data/AuthResponseData;
    .locals 14
    .param p1, "resData"    # Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnctrl/net/DataParseException;
        }
    .end annotation

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 164
    :try_start_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "ResData is null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Lcom/felicanetworks/cmnctrl/net/DataParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 323
    :catch_0
    move-exception v3

    .line 327
    .local v3, "e":Lcom/felicanetworks/cmnctrl/net/DataParseException;
    iget-object v10, p0, Lcom/felicanetworks/mfsctrl/net/MfsDataParser;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v10, v10, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v11, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v10, v11, p0, v3}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    .line 328
    throw v3

    .line 168
    .end local v3    # "e":Lcom/felicanetworks/cmnctrl/net/DataParseException;
    :cond_0
    const/16 v10, 0xc8

    :try_start_1
    iget v11, p1, Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;->code:I

    if-eq v10, v11, :cond_1

    .line 173
    new-instance v10, Lcom/felicanetworks/cmnctrl/net/DataParseException;

    const/4 v11, 0x2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ResCode : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;->code:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/felicanetworks/cmnctrl/net/DataParseException;-><init>(ILjava/lang/String;)V

    throw v10
    :try_end_1
    .catch Lcom/felicanetworks/cmnctrl/net/DataParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 329
    :catch_1
    move-exception v3

    .line 333
    .local v3, "e":Ljava/lang/Exception;
    iget-object v10, p0, Lcom/felicanetworks/mfsctrl/net/MfsDataParser;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v10, v10, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v11, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v10, v11, p0, v3}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "errorId":Ljava/lang/String;
    new-instance v10, Lcom/felicanetworks/cmnctrl/net/DataParseException;

    const/4 v11, 0x2

    invoke-direct {v10, v3, v4, v11}, Lcom/felicanetworks/cmnctrl/net/DataParseException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    throw v10

    .line 177
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "errorId":Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v10, p1, Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;->header:Ljava/util/Map;

    const-string v11, "content-length"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 179
    .local v2, "contLenStr":Ljava/lang/String;
    invoke-static {v2}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkDecNumberFormat(Ljava/lang/String;)V

    .line 180
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 182
    .local v1, "contLen":I
    iget-object v10, p1, Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;->data:[B

    array-length v10, v10

    if-eq v10, v1, :cond_2

    .line 187
    new-instance v10, Lcom/felicanetworks/cmnctrl/net/DataParseException;

    const/4 v11, 0x2

    const-string v12, "Contents Length not equal ResData Length"

    invoke-direct {v10, v11, v12}, Lcom/felicanetworks/cmnctrl/net/DataParseException;-><init>(ILjava/lang/String;)V

    throw v10

    .line 191
    :cond_2
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    new-instance v11, Ljava/io/ByteArrayInputStream;

    iget-object v12, p1, Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;->data:[B

    invoke-direct {v11, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v12, "UTF-8"

    invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 192
    .local v5, "genReader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 197
    .local v6, "line":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 201
    const-string v10, "rescode"

    invoke-direct {p0, v10, v6}, Lcom/felicanetworks/mfsctrl/net/MfsDataParser;->getAuthData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 205
    .local v8, "resCodeStr":Ljava/lang/String;
    if-nez v8, :cond_3

    .line 209
    new-instance v10, Lcom/felicanetworks/cmnctrl/net/DataParseException;

    const/4 v11, 0x2

    const-string v12, "Cannot get ResCode"

    invoke-direct {v10, v11, v12}, Lcom/felicanetworks/cmnctrl/net/DataParseException;-><init>(ILjava/lang/String;)V

    throw v10

    .line 213
    :cond_3
    const/4 v10, 0x2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v10, v11, :cond_4

    .line 218
    new-instance v10, Lcom/felicanetworks/cmnctrl/net/DataParseException;

    const/4 v11, 0x2

    const-string v12, "ResCode length is Illegal"

    invoke-direct {v10, v11, v12}, Lcom/felicanetworks/cmnctrl/net/DataParseException;-><init>(ILjava/lang/String;)V

    throw v10

    .line 220
    :cond_4
    const/4 v7, 0x0

    .line 221
    .local v7, "resCode":I
    const-string v10, "OK"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 226
    const/4 v7, 0x0

    .line 243
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 248
    const/4 v0, 0x0

    .line 251
    .local v0, "authFinishCode":Ljava/lang/String;
    const/4 v10, 0x1

    if-ne v10, v7, :cond_9

    .line 255
    const-string v10, "authfincode"

    invoke-direct {p0, v10, v6}, Lcom/felicanetworks/mfsctrl/net/MfsDataParser;->getAuthData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    if-nez v0, :cond_7

    .line 265
    new-instance v10, Lcom/felicanetworks/cmnctrl/net/DataParseException;

    const/4 v11, 0x2

    const-string v12, "Cannot get FinishCode"

    invoke-direct {v10, v11, v12}, Lcom/felicanetworks/cmnctrl/net/DataParseException;-><init>(ILjava/lang/String;)V

    throw v10

    .line 227
    .end local v0    # "authFinishCode":Ljava/lang/String;
    :cond_5
    const-string v10, "NG"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 232
    const/4 v7, 0x1

    goto :goto_0

    .line 238
    :cond_6
    new-instance v10, Lcom/felicanetworks/cmnctrl/net/DataParseException;

    const/4 v11, 0x2

    const-string v12, "ResCode is naither  OK nor NG"

    invoke-direct {v10, v11, v12}, Lcom/felicanetworks/cmnctrl/net/DataParseException;-><init>(ILjava/lang/String;)V

    throw v10

    .line 268
    .restart local v0    # "authFinishCode":Ljava/lang/String;
    :cond_7
    const/4 v10, 0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v10, v11, :cond_8

    .line 273
    new-instance v10, Lcom/felicanetworks/cmnctrl/net/DataParseException;

    const/4 v11, 0x2

    const-string v12, "FinishCode length is Illegal"

    invoke-direct {v10, v11, v12}, Lcom/felicanetworks/cmnctrl/net/DataParseException;-><init>(ILjava/lang/String;)V

    throw v10

    .line 277
    :cond_8
    invoke-static {v0}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkAlphaSignFormat(Ljava/lang/String;)V

    .line 282
    :cond_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 290
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 294
    const/4 v9, 0x0

    .line 296
    .local v9, "startUrlStr":Ljava/lang/String;
    if-nez v7, :cond_b

    .line 300
    const-string v10, "surl"

    invoke-direct {p0, v10, v6}, Lcom/felicanetworks/mfsctrl/net/MfsDataParser;->getAuthData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 304
    if-nez v9, :cond_a

    .line 308
    new-instance v10, Lcom/felicanetworks/cmnctrl/net/DataParseException;

    const/4 v11, 0x2

    const-string v12, "Cannot get StartUrl"

    invoke-direct {v10, v11, v12}, Lcom/felicanetworks/cmnctrl/net/DataParseException;-><init>(ILjava/lang/String;)V

    throw v10

    .line 312
    :cond_a
    invoke-static {v9}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkUrlCharFormat(Ljava/lang/String;)V

    .line 321
    :cond_b
    new-instance v10, Lcom/felicanetworks/mfsctrl/data/AuthResponseData;

    invoke-direct {v10, v7, v0, v9}, Lcom/felicanetworks/mfsctrl/data/AuthResponseData;-><init>(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/felicanetworks/cmnctrl/net/DataParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v10
.end method

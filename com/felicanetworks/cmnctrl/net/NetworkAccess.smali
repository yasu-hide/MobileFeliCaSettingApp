.class public Lcom/felicanetworks/cmnctrl/net/NetworkAccess;
.super Ljava/lang/Object;
.source "NetworkAccess.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# static fields
.field private static final CHARCODE:Ljava/lang/String; = "UTF-8"

.field private static final CONNECT_TYPE_GET:Ljava/lang/String; = "GET"

.field private static final CONTENT_LENGTH_KEY:Ljava/lang/String; = "content-length"

.field public static final CONTENT_TYPE_KEY:Ljava/lang/String; = "content-type"

.field private static connMgr:Lorg/apache/http/conn/ClientConnectionManager;


# instance fields
.field private context:Lcom/felicanetworks/cmnlib/AppContext;

.field private isCancel:Z

.field private requestBase:Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->connMgr:Lorg/apache/http/conn/ClientConnectionManager;

    return-void
.end method

.method public constructor <init>(Lcom/felicanetworks/cmnlib/AppContext;)V
    .locals 5
    .param p1, "context"    # Lcom/felicanetworks/cmnlib/AppContext;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->isCancel:Z

    .line 72
    iput-object p1, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    .line 75
    sget-object v2, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->connMgr:Lorg/apache/http/conn/ClientConnectionManager;

    if-nez v2, :cond_0

    .line 79
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 80
    .local v1, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 81
    .local v0, "clientConnMgr":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v2, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->connMgr:Lorg/apache/http/conn/ClientConnectionManager;

    .line 86
    .end local v0    # "clientConnMgr":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v1    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :cond_0
    return-void
.end method

.method private createNetworkAccessException(Ljava/lang/Exception;)Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 341
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_0

    .line 345
    new-instance v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;

    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v1, v1, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v2, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v1, v2, p0, p1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, p1, v1, v2}, Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 356
    :goto_0
    return-object v0

    .line 347
    :cond_0
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    .line 351
    new-instance v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;

    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v1, v1, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v2, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v1, v2, p0, p1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, p1, v1, v2}, Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    goto :goto_0

    .line 356
    :cond_1
    new-instance v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;

    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v1, v1, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v2, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v1, v2, p0, p1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, p1, v1, v2}, Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->isCancel:Z

    .line 372
    monitor-enter p0

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->requestBase:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->requestBase:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->requestBase:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 380
    :cond_0
    monitor-exit p0

    .line 384
    return-void

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connect(Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;)Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;
    .locals 30
    .param p1, "reqData"    # Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;
        }
    .end annotation

    .prologue
    .line 126
    const/16 v21, 0x0

    .line 128
    .local v21, "resData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;
    const/4 v15, 0x0

    .line 130
    .local v15, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 132
    .local v5, "busOs":Ljava/io/ByteArrayOutputStream;
    const/16 v24, 0x0

    .line 141
    .local v24, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    new-instance v8, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v8}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 142
    .local v8, "connParams":Lorg/apache/http/params/HttpParams;
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v26, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->connMgr:Lorg/apache/http/conn/ClientConnectionManager;

    move-object/from16 v0, v26

    invoke-direct {v7, v0, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 145
    .local v7, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v26

    const-string v27, "http.protocol.expect-continue"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 147
    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v26

    const-string v27, "http.useragent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/felicanetworks/cmnlib/AppContext;->userAgent:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-interface/range {v26 .. v28}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 149
    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->readTimeout:I

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 151
    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->connectTimeout:I

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 153
    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v26

    sget-object v27, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static/range {v26 .. v27}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 158
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->method:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "GET"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 162
    new-instance v25, Ljava/net/URI;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->url:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "?"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    new-instance v27, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->data:[B

    move-object/from16 v28, v0

    const-string v29, "UTF-8"

    invoke-direct/range {v27 .. v29}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 163
    .local v25, "uri":Ljava/net/URI;
    new-instance v26, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v25 .. v25}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->requestBase:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->requestBase:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v7, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v24

    .line 178
    :goto_0
    const/4 v7, 0x0

    .line 181
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->listener:Lcom/felicanetworks/cmnctrl/net/NetworkAccessListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 185
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->listener:Lcom/felicanetworks/cmnctrl/net/NetworkAccessListener;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/felicanetworks/cmnctrl/net/NetworkAccessListener;->session()V

    .line 188
    :cond_0
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    .line 193
    .local v20, "resCode":I
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 195
    .local v12, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v13

    .line 196
    .local v13, "headers":[Lorg/apache/http/Header;
    move-object v3, v13

    .local v3, "arr$":[Lorg/apache/http/Header;
    array-length v0, v3

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_2

    aget-object v11, v3, v14

    .line 198
    .local v11, "h":Lorg/apache/http/Header;
    invoke-interface {v11}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    .line 199
    .local v22, "resKey":Ljava/lang/String;
    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v23

    .line 200
    .local v23, "resValue":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 169
    .end local v3    # "arr$":[Lorg/apache/http/Header;
    .end local v11    # "h":Lorg/apache/http/Header;
    .end local v12    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "headers":[Lorg/apache/http/Header;
    .end local v14    # "i$":I
    .end local v16    # "len$":I
    .end local v20    # "resCode":I
    .end local v22    # "resKey":Ljava/lang/String;
    .end local v23    # "resValue":Ljava/lang/String;
    .end local v25    # "uri":Ljava/net/URI;
    :cond_1
    new-instance v25, Ljava/net/URI;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->url:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 170
    .restart local v25    # "uri":Ljava/net/URI;
    new-instance v26, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual/range {v25 .. v25}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->requestBase:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->requestBase:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v27, v0

    const-string v28, "content-type"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->header:Ljava/util/Map;

    move-object/from16 v26, v0

    const-string v29, "content-type"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->requestBase:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v26, v0

    check-cast v26, Lorg/apache/http/client/methods/HttpPost;

    new-instance v27, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->data:[B

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual/range {v26 .. v27}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->requestBase:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v7, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v24

    goto/16 :goto_0

    .line 204
    .restart local v3    # "arr$":[Lorg/apache/http/Header;
    .restart local v12    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "headers":[Lorg/apache/http/Header;
    .restart local v14    # "i$":I
    .restart local v16    # "len$":I
    .restart local v20    # "resCode":I
    :cond_2
    const/4 v9, 0x0

    .line 205
    .local v9, "contentLength":I
    const-string v26, "content-length"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    if-eqz v26, :cond_3

    const-string v26, "content-length"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_3

    .line 206
    const-string v26, "content-length"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 210
    :cond_3
    if-eqz v9, :cond_e

    .line 215
    move-object/from16 v0, p1

    iget v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->noticeCnt:I

    move/from16 v26, v0

    div-int v4, v9, v26

    .line 217
    .local v4, "baseRatio":I
    move/from16 v18, v4

    .line 219
    .local v18, "ratio":I
    const/16 v19, 0x0

    .line 221
    .local v19, "readCnt":I
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    .line 223
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    .end local v5    # "busOs":Ljava/io/ByteArrayOutputStream;
    .local v6, "busOs":Ljava/io/ByteArrayOutputStream;
    :cond_4
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->isCancel:Z

    move/from16 v26, v0

    if-eqz v26, :cond_8

    .line 231
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->isCancel:Z

    .line 232
    new-instance v26, Ljava/lang/InterruptedException;

    invoke-direct/range {v26 .. v26}, Ljava/lang/InterruptedException;-><init>()V

    throw v26
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 267
    .end local v21    # "resData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;
    :catch_0
    move-exception v10

    move-object v5, v6

    .line 271
    .end local v3    # "arr$":[Lorg/apache/http/Header;
    .end local v4    # "baseRatio":I
    .end local v6    # "busOs":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "client":Lorg/apache/http/client/HttpClient;
    .end local v8    # "connParams":Lorg/apache/http/params/HttpParams;
    .end local v9    # "contentLength":I
    .end local v12    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "headers":[Lorg/apache/http/Header;
    .end local v14    # "i$":I
    .end local v16    # "len$":I
    .end local v18    # "ratio":I
    .end local v19    # "readCnt":I
    .end local v20    # "resCode":I
    .end local v25    # "uri":Ljava/net/URI;
    .restart local v5    # "busOs":Ljava/io/ByteArrayOutputStream;
    .local v10, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->createNetworkAccessException(Ljava/lang/Exception;)Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;

    move-result-object v26

    throw v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v26

    :goto_4
    if-eqz v15, :cond_5

    .line 282
    :try_start_3
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 283
    const/4 v15, 0x0

    .line 291
    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    .line 299
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 300
    const/4 v5, 0x0

    .line 308
    :cond_6
    :goto_6
    monitor-enter p0

    .line 309
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->requestBase:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v27, v0

    if-eqz v27, :cond_7

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->requestBase:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 314
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->requestBase:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 316
    :cond_7
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v26

    .line 234
    .end local v5    # "busOs":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "arr$":[Lorg/apache/http/Header;
    .restart local v4    # "baseRatio":I
    .restart local v6    # "busOs":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v8    # "connParams":Lorg/apache/http/params/HttpParams;
    .restart local v9    # "contentLength":I
    .restart local v12    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "headers":[Lorg/apache/http/Header;
    .restart local v14    # "i$":I
    .restart local v16    # "len$":I
    .restart local v18    # "ratio":I
    .restart local v19    # "readCnt":I
    .restart local v20    # "resCode":I
    .restart local v21    # "resData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;
    .restart local v25    # "uri":Ljava/net/URI;
    :cond_8
    :try_start_6
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v17

    .line 235
    .local v17, "n":I
    const/16 v26, -0x1

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    .line 259
    new-instance v21, Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;

    .end local v21    # "resData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v26

    move-object/from16 v0, v21

    move/from16 v1, v20

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v12, v2}, Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;-><init>(ILjava/util/Map;[B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .restart local v21    # "resData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;
    move-object v5, v6

    .line 274
    .end local v4    # "baseRatio":I
    .end local v6    # "busOs":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "n":I
    .end local v18    # "ratio":I
    .end local v19    # "readCnt":I
    .restart local v5    # "busOs":Ljava/io/ByteArrayOutputStream;
    :goto_7
    if-eqz v15, :cond_9

    .line 282
    :try_start_7
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 283
    const/4 v15, 0x0

    .line 291
    :cond_9
    :goto_8
    if-eqz v5, :cond_a

    .line 299
    :try_start_8
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 300
    const/4 v5, 0x0

    .line 308
    :cond_a
    :goto_9
    monitor-enter p0

    .line 309
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->requestBase:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v26, v0

    if-eqz v26, :cond_b

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->requestBase:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 314
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->requestBase:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 316
    :cond_b
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 324
    return-object v21

    .line 242
    .end local v5    # "busOs":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "baseRatio":I
    .restart local v6    # "busOs":Ljava/io/ByteArrayOutputStream;
    .restart local v17    # "n":I
    .restart local v18    # "ratio":I
    .restart local v19    # "readCnt":I
    :cond_c
    :try_start_a
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 244
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->noticeCnt:I

    move/from16 v26, v0

    move/from16 v0, v19

    move/from16 v1, v26

    if-gt v0, v1, :cond_4

    .line 248
    add-int/lit8 v19, v19, 0x1

    .line 249
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->listener:Lcom/felicanetworks/cmnctrl/net/NetworkAccessListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_d

    .line 253
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->listener:Lcom/felicanetworks/cmnctrl/net/NetworkAccessListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/felicanetworks/cmnctrl/net/NetworkAccessListener;->receiveRatio(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 255
    :cond_d
    add-int v18, v18, v4

    goto/16 :goto_2

    .line 265
    .end local v4    # "baseRatio":I
    .end local v6    # "busOs":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "n":I
    .end local v18    # "ratio":I
    .end local v19    # "readCnt":I
    .restart local v5    # "busOs":Ljava/io/ByteArrayOutputStream;
    :cond_e
    :try_start_b
    new-instance v21, Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;

    .end local v21    # "resData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v20

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v12, v2}, Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;-><init>(ILjava/util/Map;[B)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .restart local v21    # "resData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;
    goto :goto_7

    .line 284
    :catch_1
    move-exception v10

    .line 288
    .restart local v10    # "e":Ljava/lang/Exception;
    const/4 v15, 0x0

    goto :goto_8

    .line 301
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    .line 305
    .restart local v10    # "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_9

    .line 316
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v26

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v26

    .line 284
    .end local v3    # "arr$":[Lorg/apache/http/Header;
    .end local v7    # "client":Lorg/apache/http/client/HttpClient;
    .end local v8    # "connParams":Lorg/apache/http/params/HttpParams;
    .end local v9    # "contentLength":I
    .end local v12    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "headers":[Lorg/apache/http/Header;
    .end local v14    # "i$":I
    .end local v16    # "len$":I
    .end local v20    # "resCode":I
    .end local v21    # "resData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;
    .end local v25    # "uri":Ljava/net/URI;
    :catch_3
    move-exception v10

    .line 288
    .restart local v10    # "e":Ljava/lang/Exception;
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 301
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v10

    .line 305
    .restart local v10    # "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 316
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v26

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v26

    .line 274
    .end local v5    # "busOs":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "arr$":[Lorg/apache/http/Header;
    .restart local v4    # "baseRatio":I
    .restart local v6    # "busOs":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v8    # "connParams":Lorg/apache/http/params/HttpParams;
    .restart local v9    # "contentLength":I
    .restart local v12    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "headers":[Lorg/apache/http/Header;
    .restart local v14    # "i$":I
    .restart local v16    # "len$":I
    .restart local v18    # "ratio":I
    .restart local v19    # "readCnt":I
    .restart local v20    # "resCode":I
    .restart local v25    # "uri":Ljava/net/URI;
    :catchall_3
    move-exception v26

    move-object v5, v6

    .end local v6    # "busOs":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "busOs":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4

    .line 267
    .end local v3    # "arr$":[Lorg/apache/http/Header;
    .end local v4    # "baseRatio":I
    .end local v7    # "client":Lorg/apache/http/client/HttpClient;
    .end local v8    # "connParams":Lorg/apache/http/params/HttpParams;
    .end local v9    # "contentLength":I
    .end local v12    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "headers":[Lorg/apache/http/Header;
    .end local v14    # "i$":I
    .end local v16    # "len$":I
    .end local v18    # "ratio":I
    .end local v19    # "readCnt":I
    .end local v20    # "resCode":I
    .end local v25    # "uri":Ljava/net/URI;
    :catch_5
    move-exception v10

    goto/16 :goto_3
.end method

.method public getClassCode()I
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x3

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x4

    return v0
.end method

.class public Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;
.super Ljava/lang/Object;
.source "NetworkAccessRequestData.java"


# static fields
.field private static final CUT_SIZE:I = 0x400


# instance fields
.field public connectTimeout:I

.field public data:[B

.field public header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public listener:Lcom/felicanetworks/cmnctrl/net/NetworkAccessListener;

.field public method:Ljava/lang/String;

.field public noticeCnt:I

.field public readTimeout:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II[B)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p4, "connectTimeout"    # I
    .param p5, "readTimeout"    # I
    .param p6, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II[B)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->noticeCnt:I

    .line 48
    iput-object p1, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->url:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->method:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->header:Ljava/util/Map;

    .line 51
    iput p4, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->connectTimeout:I

    .line 52
    iput p5, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->readTimeout:I

    .line 53
    iput-object p6, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->data:[B

    .line 54
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x400

    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->data:[B

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->data:[B

    array-length v2, v2

    if-le v2, v3, :cond_1

    .line 65
    new-array v0, v3, [B

    .line 66
    .local v0, "buf":[B
    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->data:[B

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    invoke-static {v0}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->binToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 72
    .end local v0    # "buf":[B
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkAccessRequestData["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->header:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->data:[B

    invoke-static {v2}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->binToHexString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

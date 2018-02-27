.class public Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;
.super Ljava/lang/Object;
.source "NetworkAccessResponseData.java"


# static fields
.field private static final CUT_SIZE:I = 0x400


# instance fields
.field public code:I

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


# direct methods
.method public constructor <init>(ILjava/util/Map;[B)V
    .locals 0
    .param p1, "code"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;->code:I

    .line 36
    iput-object p2, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;->header:Ljava/util/Map;

    .line 37
    iput-object p3, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;->data:[B

    .line 38
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x400

    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;->data:[B

    if-eqz v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;->data:[B

    array-length v2, v2

    if-le v2, v3, :cond_1

    .line 49
    new-array v0, v3, [B

    .line 50
    .local v0, "buf":[B
    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;->data:[B

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    invoke-static {v0}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->binToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 56
    .end local v0    # "buf":[B
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkAccessResponseData["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;->header:Ljava/util/Map;

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

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;->data:[B

    invoke-static {v2}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->binToHexString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

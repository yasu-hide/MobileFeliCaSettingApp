.class public Lcom/felicanetworks/cmnctrl/net/BinaryBlock;
.super Ljava/lang/Object;
.source "BinaryBlock.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# instance fields
.field protected charCode:Ljava/lang/String;

.field protected data:[B

.field protected pos:I


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "cc"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/felicanetworks/cmnctrl/net/BinaryBlock;->data:[B

    .line 60
    iput-object p2, p0, Lcom/felicanetworks/cmnctrl/net/BinaryBlock;->charCode:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/cmnctrl/net/BinaryBlock;->pos:I

    .line 62
    return-void
.end method


# virtual methods
.method public getByteArray(I)[B
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 96
    new-array v0, p1, [B

    .line 97
    .local v0, "buf":[B
    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/net/BinaryBlock;->data:[B

    iget v2, p0, Lcom/felicanetworks/cmnctrl/net/BinaryBlock;->pos:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget v1, p0, Lcom/felicanetworks/cmnctrl/net/BinaryBlock;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/felicanetworks/cmnctrl/net/BinaryBlock;->pos:I

    .line 99
    return-object v0
.end method

.method public getClassCode()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public getDigitValue(I)I
    .locals 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/felicanetworks/cmnlib/util/DataCheckerException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/net/BinaryBlock;->data:[B

    iget v2, p0, Lcom/felicanetworks/cmnctrl/net/BinaryBlock;->pos:I

    iget-object v3, p0, Lcom/felicanetworks/cmnctrl/net/BinaryBlock;->charCode:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 73
    .local v0, "s":Ljava/lang/String;
    iget v1, p0, Lcom/felicanetworks/cmnctrl/net/BinaryBlock;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/felicanetworks/cmnctrl/net/BinaryBlock;->pos:I

    .line 74
    invoke-static {v0}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkDecNumberFormat(Ljava/lang/String;)V

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x4

    return v0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/net/BinaryBlock;->data:[B

    iget v2, p0, Lcom/felicanetworks/cmnctrl/net/BinaryBlock;->pos:I

    iget-object v3, p0, Lcom/felicanetworks/cmnctrl/net/BinaryBlock;->charCode:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 86
    .local v0, "s":Ljava/lang/String;
    iget v1, p0, Lcom/felicanetworks/cmnctrl/net/BinaryBlock;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/felicanetworks/cmnctrl/net/BinaryBlock;->pos:I

    .line 87
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/net/BinaryBlock;->data:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/net/BinaryBlock;->data:[B

    invoke-static {v1}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->binToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "s":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BinaryBlock["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/felicanetworks/cmnctrl/net/BinaryBlock;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/net/BinaryBlock;->charCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 108
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/felicanetworks/gpaslib/GpasApduResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[B

.field private b:[B

.field private c:[B


# direct methods
.method public constructor <init>([B)V
    .locals 5
    .param p1, "response"    # [B

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->a:[B

    .line 25
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->b:[B

    .line 28
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->c:[B

    .line 37
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, v1, :cond_1

    .line 38
    :cond_0
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->a:[B

    .line 39
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->c:[B

    .line 40
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->b:[B

    .line 51
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->a:[B

    .line 43
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->c:[B

    .line 44
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->a:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->c:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->b:[B

    .line 46
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->a:[B

    iget-object v1, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->b:[B

    iget-object v2, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->b:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->a:[B

    iget-object v1, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->b:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->c:[B

    iget-object v3, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->c:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method public getResponseDataField()[B
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->b:[B

    return-object v0
.end method

.method public getSw1Sw2()[B
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->c:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "GpasApduResponse{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v1, "responseDataField="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->b:[B

    invoke-static {v1}, Lcom/felicanetworks/gpaslib/common/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const-string v1, "sw1Sw2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->c:[B

    invoke-static {v1}, Lcom/felicanetworks/gpaslib/common/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    const-string v1, "response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/GpasApduResponse;->a:[B

    invoke-static {v1}, Lcom/felicanetworks/gpaslib/common/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

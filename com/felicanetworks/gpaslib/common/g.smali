.class public final Lcom/felicanetworks/gpaslib/common/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:[B

.field private c:[B

.field private d:I

.field private e:[B

.field private f:Ljava/util/List;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, Lcom/felicanetworks/gpaslib/common/g;->a:I

    .line 28
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/common/g;->b:[B

    .line 30
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/common/g;->c:[B

    .line 32
    iput v1, p0, Lcom/felicanetworks/gpaslib/common/g;->d:I

    .line 34
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/common/g;->e:[B

    .line 36
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/common/g;->f:Ljava/util/List;

    .line 45
    iput p1, p0, Lcom/felicanetworks/gpaslib/common/g;->a:I

    .line 46
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 129
    iput p1, p0, Lcom/felicanetworks/gpaslib/common/g;->d:I

    .line 130
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/felicanetworks/gpaslib/common/g;->f:Ljava/util/List;

    .line 150
    return-void
.end method

.method public final a([B)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/felicanetworks/gpaslib/common/g;->b:[B

    .line 110
    return-void
.end method

.method public final a()[B
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/g;->c:[B

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/felicanetworks/gpaslib/common/g;->d:I

    return v0
.end method

.method public final b([B)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/felicanetworks/gpaslib/common/g;->c:[B

    .line 120
    return-void
.end method

.method public final c([B)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/felicanetworks/gpaslib/common/g;->e:[B

    .line 140
    return-void
.end method

.method public final c()[B
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/g;->e:[B

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/g;->f:Ljava/util/List;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "TlvObject{"

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 170
    const-string v0, "depth="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    iget v0, p0, Lcom/felicanetworks/gpaslib/common/g;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const-string v0, ",data="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/g;->b:[B

    invoke-static {v0}, Lcom/felicanetworks/gpaslib/common/a;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    const-string v0, ",tag="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/g;->c:[B

    invoke-static {v0}, Lcom/felicanetworks/gpaslib/common/a;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    const-string v0, ",length="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    iget v0, p0, Lcom/felicanetworks/gpaslib/common/g;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    const-string v0, ",value="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/g;->e:[B

    invoke-static {v0}, Lcom/felicanetworks/gpaslib/common/a;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    const-string v0, ",children={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/g;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 183
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/gpaslib/common/g;

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/common/g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 190
    :cond_1
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

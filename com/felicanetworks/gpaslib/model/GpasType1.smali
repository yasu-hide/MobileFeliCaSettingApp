.class public Lcom/felicanetworks/gpaslib/model/GpasType1;
.super Lcom/felicanetworks/gpaslib/Gpas;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/felicanetworks/gpaslib/Gpas;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/felicanetworks/gpaslib/model/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/GpasType1;->b:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 94
    new-instance v0, Lcom/felicanetworks/gpaslib/model/g;

    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/GpasType1;->b:Lcom/felicanetworks/gpaslib/model/b;

    invoke-direct {v0, v1}, Lcom/felicanetworks/gpaslib/model/g;-><init>(Lcom/felicanetworks/gpaslib/model/b;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 111
    invoke-super {p0}, Lcom/felicanetworks/gpaslib/Gpas;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    const-string v1, ",ClassName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

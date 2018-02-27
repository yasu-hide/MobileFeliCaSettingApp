.class public final Lcom/felicanetworks/gpaslib/model/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Lcom/felicanetworks/gpaslib/model/a;

.field private c:Lorg/simalliance/openmobileapi/Reader;

.field private d:Lcom/felicanetworks/gpaslib/model/f;

.field private e:J

.field private f:J

.field private g:Lcom/felicanetworks/gpaslib/GpasEventListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x7d0

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/model/b;->b:Lcom/felicanetworks/gpaslib/model/a;

    .line 34
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/model/b;->c:Lorg/simalliance/openmobileapi/Reader;

    .line 37
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/model/b;->d:Lcom/felicanetworks/gpaslib/model/f;

    .line 40
    iput-wide v1, p0, Lcom/felicanetworks/gpaslib/model/b;->e:J

    .line 43
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/model/b;->a:Landroid/content/Context;

    .line 46
    iput-wide v1, p0, Lcom/felicanetworks/gpaslib/model/b;->f:J

    .line 49
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/model/b;->g:Lcom/felicanetworks/gpaslib/GpasEventListener;

    return-void
.end method


# virtual methods
.method public final a()Lcom/felicanetworks/gpaslib/model/a;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/b;->b:Lcom/felicanetworks/gpaslib/model/a;

    return-object v0
.end method

.method public final a(J)V
    .locals 0

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/felicanetworks/gpaslib/model/b;->e:J

    .line 126
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/felicanetworks/gpaslib/model/b;->a:Landroid/content/Context;

    .line 175
    return-void
.end method

.method public final a(Lcom/felicanetworks/gpaslib/GpasEventListener;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/felicanetworks/gpaslib/model/b;->g:Lcom/felicanetworks/gpaslib/GpasEventListener;

    .line 213
    return-void
.end method

.method public final a(Lcom/felicanetworks/gpaslib/model/a;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/felicanetworks/gpaslib/model/b;->b:Lcom/felicanetworks/gpaslib/model/a;

    .line 59
    return-void
.end method

.method public final a(Lcom/felicanetworks/gpaslib/model/f;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/felicanetworks/gpaslib/model/b;->d:Lcom/felicanetworks/gpaslib/model/f;

    .line 78
    return-void
.end method

.method public final a(Lorg/simalliance/openmobileapi/Reader;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/felicanetworks/gpaslib/model/b;->c:Lorg/simalliance/openmobileapi/Reader;

    .line 106
    return-void
.end method

.method public final b()Lcom/felicanetworks/gpaslib/model/f;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/b;->d:Lcom/felicanetworks/gpaslib/model/f;

    return-object v0
.end method

.method public final b(J)V
    .locals 0

    .prologue
    .line 193
    iput-wide p1, p0, Lcom/felicanetworks/gpaslib/model/b;->f:J

    .line 194
    return-void
.end method

.method public final c()Lorg/simalliance/openmobileapi/Reader;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/b;->c:Lorg/simalliance/openmobileapi/Reader;

    return-object v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/felicanetworks/gpaslib/model/b;->e:J

    return-wide v0
.end method

.method public final e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/felicanetworks/gpaslib/model/b;->f:J

    return-wide v0
.end method

.method public final g()Lcom/felicanetworks/gpaslib/GpasEventListener;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/b;->g:Lcom/felicanetworks/gpaslib/GpasEventListener;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "GpasContainer{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 146
    const-string v1, "envSpecifiedParam={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/b;->b:Lcom/felicanetworks/gpaslib/model/a;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/b;->b:Lcom/felicanetworks/gpaslib/model/a;

    invoke-virtual {v1}, Lcom/felicanetworks/gpaslib/model/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    :cond_0
    const-string v1, "},"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-string v1, "reader={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/b;->c:Lorg/simalliance/openmobileapi/Reader;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/b;->c:Lorg/simalliance/openmobileapi/Reader;

    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/Reader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    :cond_1
    const-string v1, "},"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    const-string v1, "gpasSessionImpl={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/b;->d:Lcom/felicanetworks/gpaslib/model/f;

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/b;->d:Lcom/felicanetworks/gpaslib/model/f;

    invoke-virtual {v1}, Lcom/felicanetworks/gpaslib/model/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    :cond_2
    const-string v1, "},"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    const-string v1, "gpCardAccessTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    iget-wide v1, p0, Lcom/felicanetworks/gpaslib/model/b;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 163
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

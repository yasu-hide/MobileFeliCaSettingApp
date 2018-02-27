.class public Lcom/felicanetworks/gpaslib/GpasApduCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLA_POSITION:I = 0x0

.field public static final INS_POSITION:I = 0x1

.field public static final LC_POSITION:I = 0x4

.field public static final P1_POSITION:I = 0x2

.field public static final P2_POSITION:I = 0x3


# instance fields
.field private a:[B

.field private b:B

.field private c:B

.field private d:B

.field private e:B

.field private f:[B


# direct methods
.method public constructor <init>(BBBB[B)V
    .locals 5
    .param p1, "cla"    # B
    .param p2, "ins"    # B
    .param p3, "p1"    # B
    .param p4, "p2"    # B
    .param p5, "commandParam"    # [B

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->a:[B

    .line 33
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->f:[B

    .line 63
    iput-byte p1, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->b:B

    .line 64
    iput-byte p2, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->c:B

    .line 65
    iput-byte p3, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->d:B

    .line 66
    iput-byte p4, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->e:B

    .line 67
    if-eqz p5, :cond_0

    .line 68
    invoke-virtual {p5}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->f:[B

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->f:[B

    array-length v0, v0

    .line 75
    add-int/lit8 v1, v0, 0x4

    new-array v1, v1, [B

    .line 76
    iget-byte v2, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->b:B

    aput-byte v2, v1, v4

    .line 77
    const/4 v2, 0x1

    iget-byte v3, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->c:B

    aput-byte v3, v1, v2

    .line 78
    const/4 v2, 0x2

    iget-byte v3, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->d:B

    aput-byte v3, v1, v2

    .line 79
    const/4 v2, 0x3

    iget-byte v3, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->e:B

    aput-byte v3, v1, v2

    .line 80
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->f:[B

    const/4 v3, 0x4

    invoke-static {v2, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iput-object v1, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->a:[B

    .line 82
    return-void

    .line 70
    :cond_0
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->f:[B

    goto :goto_0
.end method


# virtual methods
.method public getCommand()[B
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->a:[B

    return-object v0
.end method

.method public setP1(B)V
    .locals 2
    .param p1, "p1"    # B

    .prologue
    .line 101
    iput-byte p1, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->d:B

    .line 102
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->a:[B

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    .line 103
    return-void
.end method

.method public setP2(B)V
    .locals 2
    .param p1, "p2"    # B

    .prologue
    .line 112
    iput-byte p1, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->e:B

    .line 113
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->a:[B

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "GpasApduCommand{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 127
    const-string v1, "CLA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    iget-byte v1, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->b:B

    invoke-static {v1}, Lcom/felicanetworks/gpaslib/common/a;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v1, "INS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    iget-byte v1, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->c:B

    invoke-static {v1}, Lcom/felicanetworks/gpaslib/common/a;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string v1, "P1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    iget-byte v1, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->d:B

    invoke-static {v1}, Lcom/felicanetworks/gpaslib/common/a;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    const-string v1, "P2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    iget-byte v1, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->e:B

    invoke-static {v1}, Lcom/felicanetworks/gpaslib/common/a;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    const-string v1, "commandParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->f:[B

    invoke-static {v1}, Lcom/felicanetworks/gpaslib/common/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    const-string v1, "command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/GpasApduCommand;->a:[B

    invoke-static {v1}, Lcom/felicanetworks/gpaslib/common/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

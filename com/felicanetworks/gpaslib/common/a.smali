.class public final Lcom/felicanetworks/gpaslib/common/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    and-int/lit16 v0, p0, 0xff

    .line 85
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 92
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 145
    if-nez p0, :cond_0

    .line 165
    :goto_0
    return-object v0

    .line 149
    :cond_0
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    const-string v0, ""

    goto :goto_0

    .line 154
    :cond_1
    if-nez p0, :cond_2

    .line 163
    :goto_1
    invoke-static {v0}, Lcom/felicanetworks/gpaslib/common/a;->c([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_2
    :try_start_0
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    new-array v0, v1, [B

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_5

    mul-int/lit8 v4, v2, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1

    .line 159
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    .line 55
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 56
    const-string v0, ""

    goto :goto_0

    .line 60
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 62
    array-length v2, p0

    .line 63
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 65
    aget-byte v3, p0, v0

    invoke-static {v3}, Lcom/felicanetworks/gpaslib/common/a;->a(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([BLcom/felicanetworks/gpaslib/model/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 245
    new-array v0, v3, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/felicanetworks/gpaslib/common/a;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p1, v3, v0}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 247
    if-nez p0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AID is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 250
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {p1, v5, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 251
    throw v0

    .line 252
    :cond_0
    array-length v0, p0

    if-lt v0, v6, :cond_1

    array-length v0, p0

    if-ge v7, v0, :cond_2

    .line 253
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 254
    const-string v1, "aid.length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 256
    const-string v1, " must be within the range of from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 258
    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 260
    const/4 v1, 0x4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {p1, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AID format error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 263
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {p1, v5, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 264
    throw v0

    .line 266
    :cond_2
    return-void
.end method

.method public static b([B)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 205
    if-eqz p0, :cond_0

    const/4 v1, 0x4

    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 206
    :cond_0
    const/4 v0, -0x1

    .line 220
    :cond_1
    return v0

    .line 209
    :cond_2
    array-length v1, p0

    if-eqz v1, :cond_1

    .line 215
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    move v2, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 216
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    add-int/2addr v3, v0

    .line 217
    add-int/lit8 v2, v2, 0x8

    .line 215
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v3

    goto :goto_0
.end method

.method private static c([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    if-nez p0, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 189
    :goto_0
    return-object v0

    .line 181
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 182
    const-string v0, ""

    goto :goto_0

    .line 186
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

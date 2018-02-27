.class public final Lcom/felicanetworks/gpaslib/model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/gpaslib/model/a;->a:Z

    .line 66
    iput-object v1, p0, Lcom/felicanetworks/gpaslib/model/a;->b:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/felicanetworks/gpaslib/model/a;->c:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/felicanetworks/gpaslib/model/a;->d:Ljava/util/HashMap;

    .line 119
    invoke-direct {p0, p1}, Lcom/felicanetworks/gpaslib/model/a;->a(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/16 v11, 0xf

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/16 v9, 0xe

    .line 240
    const-string v0, "X"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 243
    array-length v0, v1

    if-ge v0, v12, :cond_0

    .line 245
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const-string v1, "failed to split the env"

    invoke-direct {v0, v9, v9, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 258
    array-length v4, v1

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_3

    aget-object v5, v1, v0

    .line 260
    invoke-static {v5}, Lcom/felicanetworks/gpaslib/common/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 261
    if-nez v6, :cond_1

    .line 263
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to convert "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to a string"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v9, v9, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    .line 270
    :cond_1
    const-string v5, ","

    const/4 v7, 0x2

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 271
    array-length v7, v5

    const/4 v8, 0x2

    if-ge v7, v8, :cond_2

    .line 273
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to split "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of a param"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v9, v9, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    .line 281
    :cond_2
    aget-object v6, v5, v2

    aget-object v5, v5, v10

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_3
    const-string v0, "L"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 289
    if-nez v0, :cond_4

    .line 291
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const-string v1, "failed to get the L"

    invoke-direct {v0, v9, v11, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    .line 294
    :cond_4
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 296
    iput-boolean v10, p0, Lcom/felicanetworks/gpaslib/model/a;->a:Z

    .line 309
    :goto_1
    iget-boolean v0, p0, Lcom/felicanetworks/gpaslib/model/a;->a:Z

    if-eqz v0, :cond_8

    .line 310
    new-instance v4, Lcom/felicanetworks/gpaslib/model/b;

    invoke-direct {v4}, Lcom/felicanetworks/gpaslib/model/b;-><init>()V

    .line 311
    invoke-virtual {v4, p0}, Lcom/felicanetworks/gpaslib/model/b;->a(Lcom/felicanetworks/gpaslib/model/a;)V

    .line 313
    new-array v0, v10, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "param="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v4, v12, v0}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 315
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 316
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 317
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 318
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 319
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 297
    :cond_5
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 299
    iput-boolean v2, p0, Lcom/felicanetworks/gpaslib/model/a;->a:Z

    goto :goto_1

    .line 302
    :cond_6
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const-string v1, "the value of L is incorrect"

    invoke-direct {v0, v9, v11, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    .line 321
    :cond_7
    new-array v0, v10, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "item="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v4, v12, v0}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 323
    :cond_8
    const-string v0, "E"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 333
    if-nez v0, :cond_9

    .line 335
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const-string v1, "failed to get the E"

    invoke-direct {v0, v9, v11, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    .line 340
    :cond_9
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/model/a;->c:Ljava/lang/String;

    .line 347
    const-string v0, "T"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 349
    if-nez v0, :cond_a

    .line 351
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const-string v1, "failed to get the T"

    invoke-direct {v0, v9, v11, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    .line 356
    :cond_a
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/model/a;->b:Ljava/lang/String;

    .line 363
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 366
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 367
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    const-string v4, "R"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 370
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 373
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 375
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const-string v1, "failed to get the R"

    invoke-direct {v0, v9, v11, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    .line 381
    :cond_d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/model/a;->d:Ljava/util/HashMap;

    .line 384
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 386
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 389
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 391
    iget-object v4, p0, Lcom/felicanetworks/gpaslib/model/a;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 393
    :cond_e
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/a;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/felicanetworks/gpaslib/model/a;->a:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 408
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "EnvSpecifiedParam{"

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 409
    const-string v0, "logOutput="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    iget-boolean v0, p0, Lcom/felicanetworks/gpaslib/model/a;->a:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    const-string v0, ",terminalProviderIdentificationCode="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    const-string v0, ",gpasEnvIdentificationCode="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    const-string v0, ",readerMap={"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/a;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 419
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 421
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 429
    :cond_1
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

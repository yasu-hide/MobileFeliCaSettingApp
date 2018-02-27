.class public Lcom/felicanetworks/gpaslib/common/GpasLog;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 317
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 318
    return-object v0
.end method

.method public static varargs a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/felicanetworks/gpaslib/model/b;->a()Lcom/felicanetworks/gpaslib/model/a;

    move-result-object v1

    .line 138
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/felicanetworks/gpaslib/model/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const-string v1, "%s#%s(%d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "unknown class"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "unknown method"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_8

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    const-string v9, "com.felicanetworks.gpaslib"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v8, v7, :cond_1

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "GpasLog"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v1, "%s#%s(%d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 147
    :cond_0
    :goto_2
    return-void

    .line 141
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_0
    if-eqz p2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_3

    :cond_2
    const-string v0, "GpasLibrary"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 144
    :catch_0
    move-exception v0

    goto :goto_2

    .line 141
    :cond_3
    array-length v3, p2

    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_0

    aget-object v0, p2, v1

    invoke-static {v2, v0}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    instance-of v5, v0, Ljava/lang/Throwable;

    if-eqz v5, :cond_4

    const-string v5, "GpasLibrary"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v5, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    const-string v0, "GpasLibrary"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_1
    if-eqz p2, :cond_5

    array-length v1, p2

    if-nez v1, :cond_6

    :cond_5
    const-string v0, "GpasLibrary"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    array-length v3, p2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_0

    aget-object v0, p2, v1

    invoke-static {v2, v0}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    instance-of v5, v0, Ljava/lang/Throwable;

    if-eqz v5, :cond_7

    const-string v5, "GpasLibrary"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_7
    const-string v0, "GpasLibrary"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :pswitch_2
    invoke-static {v2, p2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_3
    invoke-static {v2, p2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_8
    move-object v2, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 245
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    .line 246
    :cond_0
    const-string v0, "GpasLibrary"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_1
    return-void

    .line 248
    :cond_2
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 249
    invoke-static {p0, v0}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 250
    instance-of v4, v0, Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 251
    const-string v4, "GpasLibrary"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v4, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 253
    :cond_3
    const-string v0, "GpasLibrary"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

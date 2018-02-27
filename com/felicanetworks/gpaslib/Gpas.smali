.class public abstract Lcom/felicanetworks/gpaslib/Gpas;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_GPAS_LIB_INIT_TIMEOUT:J = 0x7d0L

.field public static final MAX_GPAS_LIB_INIT_TIMEOUT:J = 0xea60L

.field public static final MIN_GPAS_LIB_INIT_TIMEOUT:J = 0x0L

.field public static final READER_IDENTIFICATION_CODE_SECURE_SD_CARD:I = 0x3

.field public static final READER_IDENTIFICATION_CODE_SMARTMX:I = 0x2

.field public static final READER_IDENTIFICATION_CODE_UICC:I = 0x1


# instance fields
.field protected a:Lorg/simalliance/openmobileapi/SEService;

.field protected b:Lcom/felicanetworks/gpaslib/model/b;

.field protected c:Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas;->a:Lorg/simalliance/openmobileapi/SEService;

    .line 112
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    .line 115
    new-instance v0, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreator;

    invoke-direct {v0, p0}, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreator;-><init>(Lcom/felicanetworks/gpaslib/Gpas;)V

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas;->c:Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreator;

    .line 996
    return-void
.end method

.method private a(I)Lorg/simalliance/openmobileapi/Reader;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 746
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v10, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "readerIdentificationCode = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v10, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 751
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/model/b;->a()Lcom/felicanetworks/gpaslib/model/a;

    move-result-object v0

    .line 753
    invoke-virtual {v0, p1}, Lcom/felicanetworks/gpaslib/model/a;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 756
    if-nez v4, :cond_0

    .line 758
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Reader is not exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 760
    throw v0

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas;->a:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->getReaders()[Lorg/simalliance/openmobileapi/Reader;

    move-result-object v5

    .line 765
    const/4 v1, 0x0

    .line 767
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 768
    array-length v7, v5

    move v2, v3

    :goto_0
    if-ge v2, v7, :cond_4

    aget-object v0, v5, v2

    .line 769
    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->getName()Ljava/lang/String;

    move-result-object v8

    .line 770
    const-string v9, "["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 771
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 772
    const-string v9, "]"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 773
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 779
    :goto_1
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v10, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Readers connected to this device = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v11, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 782
    if-nez v0, :cond_2

    .line 784
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0x23

    const-string v2, "Reader not found"

    invoke-direct {v0, v12, v1, v2}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 788
    throw v0

    .line 768
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 791
    :cond_2
    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->isSecureElementPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 792
    return-object v0

    .line 795
    :cond_3
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SE is not present"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v12, v11, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 799
    throw v0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private b()Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 810
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 811
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/Gpas;->a:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/felicanetworks/gpaslib/Gpas;->a:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v2}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 812
    :cond_0
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "SEService is not connected"

    aput-object v4, v3, v0

    invoke-static {v2, v5, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    move v0, v1

    .line 816
    :goto_0
    return v0

    .line 815
    :cond_1
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "SEService is connected"

    aput-object v3, v1, v0

    invoke-static {v2, v5, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static final declared-synchronized getFactory(Landroid/content/Context;Ljava/lang/String;JLcom/felicanetworks/gpaslib/GpasEventListener;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "gpasLibInitTimeout"    # J
    .param p4, "listener"    # Lcom/felicanetworks/gpaslib/GpasEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    .line 229
    const-class v2, Lcom/felicanetworks/gpaslib/Gpas;

    monitor-enter v2

    if-nez p0, :cond_0

    .line 230
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 232
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 236
    :cond_0
    if-nez p1, :cond_1

    .line 237
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 239
    throw v0

    .line 243
    :cond_1
    if-nez p4, :cond_2

    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 246
    throw v0

    .line 250
    :cond_2
    new-instance v3, Lcom/felicanetworks/gpaslib/model/b;

    invoke-direct {v3}, Lcom/felicanetworks/gpaslib/model/b;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :try_start_2
    new-instance v0, Lcom/felicanetworks/gpaslib/model/a;

    invoke-direct {v0, p1}, Lcom/felicanetworks/gpaslib/model/a;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v3, v0}, Lcom/felicanetworks/gpaslib/model/b;->a(Lcom/felicanetworks/gpaslib/model/a;)V

    .line 256
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 257
    const/4 v0, 0x4

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "GpasContainer created."

    aput-object v5, v1, v4

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 259
    const/4 v0, 0x1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/felicanetworks/gpaslib/model/b;->a()Lcom/felicanetworks/gpaslib/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/model/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v4, "01"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "02"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "03"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v4, 0x5

    const/16 v5, 0x11

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Terminal provider identification code "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " is not supported"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v5, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    :catch_0
    move-exception v0

    .line 276
    const/4 v1, 0x2

    const/4 v4, 0x1

    :try_start_3
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "openmobileapi not found"

    aput-object v6, v4, v5

    invoke-static {v3, v1, v4}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 277
    new-instance v1, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v3, 0x5

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    .line 281
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/model/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v4, "01"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v1, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v4, 0x5

    const/16 v5, 0x10

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Gpas environment identification code "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " is not supported"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v5, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    const/4 p0, 0x0

    throw v1
    :try_end_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 282
    :catch_1
    move-exception v0

    .line 283
    const/4 v1, 0x2

    const/4 v4, 0x1

    :try_start_5
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v1, v4}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 284
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 259
    :cond_4
    :try_start_6
    const-string v4, "01"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "01"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v0, "com.felicanetworks.gpaslib.model.GpasType1"

    move-object v1, v0

    .line 260
    :goto_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/gpaslib/Gpas;

    .line 261
    const/4 v4, 0x4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Gpas ClassName = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 265
    invoke-virtual {v3, p0}, Lcom/felicanetworks/gpaslib/model/b;->a(Landroid/content/Context;)V

    .line 266
    invoke-virtual {v3, p2, p3}, Lcom/felicanetworks/gpaslib/model/b;->b(J)V

    .line 267
    invoke-virtual {v3, p4}, Lcom/felicanetworks/gpaslib/model/b;->a(Lcom/felicanetworks/gpaslib/GpasEventListener;)V

    .line 268
    iput-object v3, v0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    .line 269
    new-instance v1, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreateProcess;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcom/felicanetworks/gpaslib/Gpas$SEServiceCreateProcess;-><init>(Lcom/felicanetworks/gpaslib/Gpas;)V

    .line 270
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 271
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 273
    monitor-exit v2

    return-void

    .line 259
    :cond_5
    :try_start_7
    const-string v4, "02"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "01"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v0, "com.felicanetworks.gpaslib.model.GpasType2"

    move-object v1, v0

    goto :goto_0

    :cond_6
    const-string v4, "03"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "01"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v0, "com.felicanetworks.gpaslib.model.GpasType3"

    move-object v1, v0

    goto :goto_0

    :cond_7
    new-instance v4, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v5, 0x5

    const/16 v6, 0x12

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Terminal provider identification code "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "and Gpas environment identification code "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " are not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v6, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    const/4 p0, 0x0

    throw v4
    :try_end_7
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 285
    :catch_2
    move-exception v0

    .line 286
    :try_start_8
    new-instance v1, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    .line 290
    const/4 v0, 0x2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v0, v4}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 291
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public static final getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, "1.2.0"

    return-object v0
.end method


# virtual methods
.method protected abstract a()Lcom/felicanetworks/gpaslib/model/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation
.end method

.method public getGpasSession(IJ)Lcom/felicanetworks/gpaslib/GpasSession;
    .locals 7
    .param p1, "readerIdentificationCode"    # I
    .param p2, "gpCardAccessTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 612
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readerIdentificationCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gpCardAccessTimeout = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v4, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 618
    invoke-direct {p0}, Lcom/felicanetworks/gpaslib/Gpas;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const-string v1, "SEService is not connected"

    invoke-direct {v0, v5, v5, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 623
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v5, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 624
    throw v0

    .line 631
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/felicanetworks/gpaslib/Gpas;->a(I)Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    .line 634
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v1, v0}, Lcom/felicanetworks/gpaslib/model/b;->a(Lorg/simalliance/openmobileapi/Reader;)V

    .line 635
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v0, p2, p3}, Lcom/felicanetworks/gpaslib/model/b;->a(J)V

    .line 636
    invoke-virtual {p0}, Lcom/felicanetworks/gpaslib/Gpas;->a()Lcom/felicanetworks/gpaslib/model/f;

    move-result-object v0

    .line 639
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/model/f;->a()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 655
    return-object v0

    .line 640
    :catch_0
    move-exception v0

    .line 641
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v5, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 642
    throw v0

    .line 643
    :catch_1
    move-exception v0

    .line 644
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v5, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 645
    throw v0

    .line 646
    :catch_2
    move-exception v0

    .line 647
    new-instance v1, Lcom/felicanetworks/gpaslib/GpasException;

    invoke-direct {v1, v4, v4, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    .line 651
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v6

    invoke-static {v0, v5, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 652
    throw v1
.end method

.method public shutdown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    .line 695
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 696
    invoke-direct {p0}, Lcom/felicanetworks/gpaslib/Gpas;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas;->a:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->shutdown()V

    .line 698
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/Gpas;->a:Lorg/simalliance/openmobileapi/SEService;

    .line 700
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 849
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 850
    const-string v1, "GPAS_VERSION = 1.2.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 851
    const-string v1, ",seService = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 852
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/Gpas;->a:Lorg/simalliance/openmobileapi/SEService;

    if-eqz v1, :cond_0

    .line 853
    const-string v1, "connected,Gpas = created"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 857
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ",gpasContainer = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/felicanetworks/gpaslib/Gpas;->b:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 858
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 855
    :cond_0
    const-string v1, "not connected,Gpas = not created"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

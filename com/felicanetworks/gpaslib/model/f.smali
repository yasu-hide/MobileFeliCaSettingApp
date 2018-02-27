.class public abstract Lcom/felicanetworks/gpaslib/model/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/felicanetworks/gpaslib/GpasSession;


# static fields
.field protected static final d:[B

.field protected static final e:[B

.field protected static final f:[B

.field protected static final g:[B

.field protected static final h:[B

.field protected static final i:[B

.field private static l:[B

.field private static m:[B

.field private static n:[B

.field private static o:[B


# instance fields
.field protected a:Lcom/felicanetworks/gpaslib/GpasApduManager;

.field protected b:Ljava/lang/String;

.field protected c:Lcom/felicanetworks/gpaslib/model/b;

.field private j:J

.field private k:Lorg/simalliance/openmobileapi/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 112
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/felicanetworks/gpaslib/model/f;->d:[B

    .line 121
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/felicanetworks/gpaslib/model/f;->l:[B

    .line 125
    new-array v0, v2, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/felicanetworks/gpaslib/model/f;->e:[B

    .line 127
    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/felicanetworks/gpaslib/model/f;->f:[B

    .line 131
    new-array v0, v2, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/felicanetworks/gpaslib/model/f;->g:[B

    .line 135
    new-array v0, v4, [B

    const/16 v1, 0x61

    aput-byte v1, v0, v3

    sput-object v0, Lcom/felicanetworks/gpaslib/model/f;->h:[B

    .line 137
    new-array v0, v4, [B

    const/16 v1, 0x4f

    aput-byte v1, v0, v3

    sput-object v0, Lcom/felicanetworks/gpaslib/model/f;->i:[B

    .line 139
    new-array v0, v2, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/felicanetworks/gpaslib/model/f;->m:[B

    .line 142
    new-array v0, v4, [B

    const/16 v1, -0x5c

    aput-byte v1, v0, v3

    sput-object v0, Lcom/felicanetworks/gpaslib/model/f;->n:[B

    .line 151
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/felicanetworks/gpaslib/model/f;->o:[B

    return-void

    .line 112
    :array_0
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x43t
        0x52t
        0x53t
        0x0t
    .end array-data

    .line 121
    nop

    :array_1
    .array-data 1
        -0x80t
        -0xet
        0x40t
        0x0t
    .end array-data

    .line 125
    :array_2
    .array-data 1
        -0x70t
        0x0t
    .end array-data

    .line 127
    nop

    :array_3
    .array-data 1
        0x63t
        0x10t
    .end array-data

    .line 131
    nop

    :array_4
    .array-data 1
        0x6at
        -0x78t
    .end array-data

    .line 139
    nop

    :array_5
    .array-data 1
        -0x61t
        0x70t
    .end array-data

    .line 151
    nop

    :array_6
    .array-data 1
        0x32t
        0x50t
        0x41t
        0x59t
        0x2et
        0x53t
        0x59t
        0x53t
        0x2et
        0x44t
        0x44t
        0x46t
        0x30t
        0x31t
    .end array-data
.end method

.method protected constructor <init>(Lcom/felicanetworks/gpaslib/model/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/felicanetworks/gpaslib/model/f;->j:J

    .line 100
    iput-object v2, p0, Lcom/felicanetworks/gpaslib/model/f;->k:Lorg/simalliance/openmobileapi/Session;

    .line 103
    iput-object v2, p0, Lcom/felicanetworks/gpaslib/model/f;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    .line 106
    iput-object v2, p0, Lcom/felicanetworks/gpaslib/model/f;->b:Ljava/lang/String;

    .line 109
    iput-object v2, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    .line 180
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v4

    invoke-static {p1, v3, v0}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 183
    :try_start_0
    iput-object p1, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    .line 184
    invoke-virtual {p1}, Lcom/felicanetworks/gpaslib/model/b;->d()J

    move-result-wide v0

    .line 185
    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/gpaslib/model/f;->setGpCardAccessTimeout(J)V

    .line 186
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/model/b;->c()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Reader;->openSession()Lorg/simalliance/openmobileapi/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->k:Lorg/simalliance/openmobileapi/Session;

    .line 188
    invoke-virtual {p0}, Lcom/felicanetworks/gpaslib/model/f;->getGpasApduManager()Lcom/felicanetworks/gpaslib/GpasApduManager;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 191
    const/4 v1, 0x4

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "something went wrong with the communicating to the Secure Element or the reader"

    aput-object v3, v2, v4

    invoke-static {p1, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 192
    new-instance v1, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v2, 0x3

    const/16 v3, 0x15

    invoke-direct {v1, v2, v3, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    .line 194
    throw v1
.end method

.method private a([B)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 602
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/felicanetworks/gpaslib/common/a;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v4, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 605
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    sget-object v1, Lcom/felicanetworks/gpaslib/model/f;->d:[B

    invoke-interface {v0, v1}, Lcom/felicanetworks/gpaslib/GpasApduManager;->open([B)V

    .line 612
    if-nez p1, :cond_1

    .line 618
    const/16 v0, 0xa

    new-array v5, v0, [B

    fill-array-data v5, :array_0

    .line 621
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasApduCommand;

    sget-object v1, Lcom/felicanetworks/gpaslib/model/f;->l:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    sget-object v2, Lcom/felicanetworks/gpaslib/model/f;->l:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    sget-object v3, Lcom/felicanetworks/gpaslib/model/f;->l:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    sget-object v4, Lcom/felicanetworks/gpaslib/model/f;->l:[B

    const/4 v7, 0x3

    aget-byte v4, v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/felicanetworks/gpaslib/GpasApduCommand;-><init>(BBBB[B)V

    .line 659
    :goto_0
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/f;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v1, v0}, Lcom/felicanetworks/gpaslib/GpasApduManager;->process(Lcom/felicanetworks/gpaslib/GpasApduCommand;)Lcom/felicanetworks/gpaslib/GpasApduResponse;

    move-result-object v1

    .line 661
    invoke-virtual {v1}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getSw1Sw2()[B

    move-result-object v2

    sget-object v3, Lcom/felicanetworks/gpaslib/model/f;->e:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 664
    invoke-virtual {v1}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getResponseDataField()[B

    move-result-object v0

    .line 665
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v3, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "GET STATUS Response "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 666
    array-length v0, v0

    if-eqz v0, :cond_0

    .line 667
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v0}, Lcom/felicanetworks/gpaslib/GpasApduManager;->close()V

    .line 705
    invoke-virtual {p0, v6}, Lcom/felicanetworks/gpaslib/model/f;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 707
    return-object v0

    .line 631
    :cond_1
    const/4 v0, 0x7

    :try_start_1
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    .line 636
    array-length v1, p1

    add-int/lit8 v1, v1, 0x3

    array-length v2, v0

    add-int/2addr v1, v2

    .line 639
    add-int/lit8 v2, v1, -0x2

    .line 640
    const/4 v3, 0x3

    new-array v3, v3, [B

    const/4 v4, 0x0

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    const/4 v2, 0x1

    const/16 v4, 0x4f

    aput-byte v4, v3, v2

    const/4 v2, 0x2

    array-length v4, p1

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 642
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 645
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 646
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 647
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 649
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasApduCommand;

    sget-object v1, Lcom/felicanetworks/gpaslib/model/f;->l:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    sget-object v2, Lcom/felicanetworks/gpaslib/model/f;->l:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    sget-object v3, Lcom/felicanetworks/gpaslib/model/f;->l:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    sget-object v4, Lcom/felicanetworks/gpaslib/model/f;->l:[B

    const/4 v7, 0x3

    aget-byte v4, v4, v7

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/felicanetworks/gpaslib/GpasApduCommand;-><init>(BBBB[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 702
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/f;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v1}, Lcom/felicanetworks/gpaslib/GpasApduManager;->close()V

    throw v0

    .line 670
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getSw1Sw2()[B

    move-result-object v2

    sget-object v3, Lcom/felicanetworks/gpaslib/model/f;->f:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 673
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v3, 0x4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "GET STATUS Response "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 674
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/gpaslib/GpasApduCommand;->setP2(B)V

    goto/16 :goto_0

    .line 677
    :cond_3
    invoke-virtual {v1}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getSw1Sw2()[B

    move-result-object v0

    sget-object v2, Lcom/felicanetworks/gpaslib/model/f;->g:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 680
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v2, 0x4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "GET STATUS Response "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 681
    if-eqz p1, :cond_0

    .line 683
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0x9

    const/16 v2, 0x13

    const-string v3, "Referenced data not found"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 687
    throw v0

    .line 693
    :cond_4
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v2, 0x4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GET STATUS Response "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 694
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x3

    const/16 v2, 0x9

    const-string v3, "unexpected SW1-SW2 has returned"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 697
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 618
    nop

    :array_0
    .array-data 1
        0x8t
        0x4ft
        0x0t
        0x5ct
        0x4t
        0x4ft
        -0x61t
        0x70t
        -0x5ct
        0x0t
    .end array-data

    .line 631
    nop

    :array_1
    .array-data 1
        0x5ct
        0x4t
        0x4ft
        -0x61t
        0x70t
        -0x5ct
        0x0t
    .end array-data
.end method


# virtual methods
.method protected a(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v13, 0x9

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 756
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 757
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 758
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "response data field is empty"

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    move-object v0, v7

    .line 852
    :goto_0
    return-object v0

    .line 764
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 766
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/gpaslib/GpasApduResponse;

    .line 767
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getResponseDataField()[B

    move-result-object v8

    .line 768
    array-length v0, v8

    add-int/2addr v0, v1

    .line 769
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 770
    goto :goto_1

    .line 773
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 775
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 777
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 780
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/felicanetworks/gpaslib/common/h;->a([B)Lcom/felicanetworks/gpaslib/common/g;

    move-result-object v0

    .line 783
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/common/g;->d()Ljava/util/List;

    move-result-object v0

    .line 785
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/gpaslib/common/g;

    .line 786
    sget-object v1, Lcom/felicanetworks/gpaslib/model/f;->h:[B

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/common/g;->a()[B

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    .line 788
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0x24

    const-string v2, "application template tag not found under the root tag"

    invoke-direct {v0, v13, v1, v2}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 792
    throw v0

    .line 802
    :cond_3
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/common/g;->d()Ljava/util/List;

    move-result-object v0

    .line 803
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v2

    move-object v4, v5

    move-object v6, v5

    :cond_4
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/gpaslib/common/g;

    .line 804
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/common/g;->a()[B

    move-result-object v10

    .line 806
    sget-object v11, Lcom/felicanetworks/gpaslib/model/f;->i:[B

    invoke-static {v11, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 808
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/common/g;->c()[B

    move-result-object v0

    move-object v6, v0

    goto :goto_4

    .line 809
    :cond_5
    sget-object v11, Lcom/felicanetworks/gpaslib/model/f;->m:[B

    invoke-static {v11, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 812
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/common/g;->c()[B

    move-result-object v0

    move-object v4, v0

    goto :goto_4

    .line 813
    :cond_6
    sget-object v11, Lcom/felicanetworks/gpaslib/model/f;->n:[B

    invoke-static {v11, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 815
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/common/g;->d()Ljava/util/List;

    move-result-object v0

    .line 816
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/gpaslib/common/g;

    .line 817
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/common/g;->a()[B

    move-result-object v11

    sget-object v12, Lcom/felicanetworks/gpaslib/model/f;->i:[B

    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 818
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/common/g;->c()[B

    move-result-object v0

    sget-object v11, Lcom/felicanetworks/gpaslib/model/f;->o:[B

    invoke-static {v0, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v3

    .line 821
    goto :goto_4

    .line 828
    :cond_8
    if-nez v6, :cond_9

    .line 830
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0x25

    const-string v2, "aid tag not found under the application template tag"

    invoke-direct {v0, v13, v1, v2}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 834
    throw v0

    .line 835
    :cond_9
    if-nez v4, :cond_a

    .line 837
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0x26

    const-string v2, "application lifecycle state tag not found under the application template tag"

    invoke-direct {v0, v13, v1, v2}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 841
    throw v0

    .line 844
    :cond_a
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasContactlessService;

    aget-byte v9, v4, v2

    aget-byte v4, v4, v3

    invoke-direct {v0, v6, v1, v9, v4}, Lcom/felicanetworks/gpaslib/GpasContactlessService;-><init>([BIBB)V

    .line 849
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_b
    move-object v0, v7

    .line 852
    goto/16 :goto_0
.end method

.method public abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation
.end method

.method public final b()Lorg/simalliance/openmobileapi/Session;
    .locals 3

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 1115
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->k:Lorg/simalliance/openmobileapi/Session;

    return-object v0
.end method

.method protected final c()Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1131
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 1132
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/model/f;->k:Lorg/simalliance/openmobileapi/Session;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/felicanetworks/gpaslib/model/f;->k:Lorg/simalliance/openmobileapi/Session;

    invoke-virtual {v2}, Lorg/simalliance/openmobileapi/Session;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1133
    :cond_0
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "session is not opened"

    aput-object v4, v3, v0

    invoke-static {v2, v5, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    move v0, v1

    .line 1137
    :goto_0
    return v0

    .line 1136
    :cond_1
    iget-object v2, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "session is opened"

    aput-object v3, v1, v0

    invoke-static {v2, v5, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    .line 992
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 993
    invoke-virtual {p0}, Lcom/felicanetworks/gpaslib/model/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->k:Lorg/simalliance/openmobileapi/Session;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/Session;->close()V

    .line 995
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->k:Lorg/simalliance/openmobileapi/Session;

    .line 997
    :cond_0
    return-void
.end method

.method protected abstract d()Lcom/felicanetworks/gpaslib/model/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation
.end method

.method public getGpCardAccessTimeout()J
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 258
    iget-wide v0, p0, Lcom/felicanetworks/gpaslib/model/f;->j:J

    return-wide v0
.end method

.method public getGpasApduManager()Lcom/felicanetworks/gpaslib/GpasApduManager;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 944
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 945
    invoke-virtual {p0}, Lcom/felicanetworks/gpaslib/model/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0x16

    const-string v2, "session is not opened"

    invoke-direct {v0, v5, v1, v2}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 950
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v5, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 951
    throw v0

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v0, p0}, Lcom/felicanetworks/gpaslib/model/b;->a(Lcom/felicanetworks/gpaslib/model/f;)V

    .line 955
    new-instance v0, Lcom/felicanetworks/gpaslib/common/b;

    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    invoke-direct {v0, v1}, Lcom/felicanetworks/gpaslib/common/b;-><init>(Lcom/felicanetworks/gpaslib/model/b;)V

    .line 957
    return-object v0
.end method

.method public getGpasContactlessService([B)Lcom/felicanetworks/gpaslib/GpasContactlessService;
    .locals 7
    .param p1, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 502
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/felicanetworks/gpaslib/common/a;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v4, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    invoke-static {p1, v0}, Lcom/felicanetworks/gpaslib/common/a;->a([BLcom/felicanetworks/gpaslib/model/b;)V

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 508
    :try_start_0
    invoke-direct {p0, p1}, Lcom/felicanetworks/gpaslib/model/f;->a([B)Ljava/util/List;
    :try_end_0
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 521
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/gpaslib/GpasContactlessService;

    .line 522
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasContactlessService;->getAid()[B

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    return-object v0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v6, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 511
    throw v0

    .line 512
    :catch_1
    move-exception v0

    .line 513
    new-instance v1, Lcom/felicanetworks/gpaslib/GpasException;

    invoke-direct {v1, v4, v4, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    .line 516
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-static {v0, v6, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 517
    throw v1

    .line 527
    :cond_1
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0x9

    const/16 v2, 0x13

    const-string v3, "aid is not an exact match"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 531
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v6, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 532
    throw v0
.end method

.method public getGpasContactlessServiceList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 373
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/felicanetworks/gpaslib/model/f;->a([B)Ljava/util/List;
    :try_end_0
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 387
    return-object v0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v4, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 379
    throw v0

    .line 380
    :catch_1
    move-exception v0

    .line 381
    new-instance v1, Lcom/felicanetworks/gpaslib/GpasException;

    invoke-direct {v1, v2, v2, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    .line 384
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v0, v4, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 385
    throw v1
.end method

.method public getGpasPaymentServiceManager()Lcom/felicanetworks/gpaslib/GpasPaymentServiceManager;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 889
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 891
    invoke-virtual {p0}, Lcom/felicanetworks/gpaslib/model/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0x16

    invoke-direct {v0, v4, v1}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(II)V

    .line 895
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v4, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 896
    throw v0

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v0, p0}, Lcom/felicanetworks/gpaslib/model/b;->a(Lcom/felicanetworks/gpaslib/model/f;)V

    .line 901
    invoke-virtual {p0}, Lcom/felicanetworks/gpaslib/model/f;->d()Lcom/felicanetworks/gpaslib/model/c;

    move-result-object v0

    .line 903
    return-object v0
.end method

.method public getIccid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 1019
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setGpCardAccessTimeout(J)V
    .locals 11
    .param p1, "gpCardAccessTimeout"    # J

    .prologue
    const-wide/32 v9, 0xea60

    const-wide/16 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 221
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gpCardAccessTimeout = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v4, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 224
    cmp-long v0, v9, p1

    if-gez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "specified timeout "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is greater than maximum value 60000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v6, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 227
    iput-wide v9, p0, Lcom/felicanetworks/gpaslib/model/f;->j:J

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set gpCardAccessTimeout = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/felicanetworks/gpaslib/model/f;->j:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v6, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 236
    return-void

    .line 228
    :cond_0
    cmp-long v0, p1, v7

    if-gez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "specified timeout "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is less than minimum value 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v6, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 231
    iput-wide v7, p0, Lcom/felicanetworks/gpaslib/model/f;->j:J

    goto :goto_0

    .line 233
    :cond_1
    iput-wide p1, p0, Lcom/felicanetworks/gpaslib/model/f;->j:J

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1153
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1154
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gpCardAccessTimeout = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/felicanetworks/gpaslib/model/f;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1156
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ",ICCID = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/felicanetworks/gpaslib/model/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1157
    const-string v1, ",session = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1158
    invoke-virtual {p0}, Lcom/felicanetworks/gpaslib/model/f;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1159
    const-string v1, "closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1163
    :goto_0
    const-string v1, ",gpasApduManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1164
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/f;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    if-nez v1, :cond_2

    .line 1165
    const-string v1, "is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1170
    :goto_1
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v1}, Lcom/felicanetworks/gpaslib/model/b;->c()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v1

    .line 1171
    const-string v2, ",ReaderName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1172
    if-eqz v1, :cond_0

    .line 1173
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/Reader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1176
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/f;->c:Lcom/felicanetworks/gpaslib/model/b;

    invoke-virtual {v1}, Lcom/felicanetworks/gpaslib/model/b;->a()Lcom/felicanetworks/gpaslib/model/a;

    move-result-object v1

    .line 1178
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ",terminalProviderIdentificationCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/felicanetworks/gpaslib/model/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1181
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1161
    :cond_1
    const-string v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1167
    :cond_2
    const-string v1, "is not null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

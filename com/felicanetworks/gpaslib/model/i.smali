.class public final Lcom/felicanetworks/gpaslib/model/i;
.super Lcom/felicanetworks/gpaslib/model/f;
.source "SourceFile"


# static fields
.field private static j:[B

.field private static k:[B

.field private static l:[B

.field private static m:[B

.field private static n:[B

.field private static o:[B

.field private static p:[B

.field private static q:[B

.field private static r:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 45
    new-array v0, v2, [B

    aput-byte v2, v0, v3

    sput-object v0, Lcom/felicanetworks/gpaslib/model/i;->j:[B

    .line 48
    new-array v0, v2, [B

    aput-byte v2, v0, v3

    sput-object v0, Lcom/felicanetworks/gpaslib/model/i;->k:[B

    .line 51
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/felicanetworks/gpaslib/model/i;->l:[B

    .line 56
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/felicanetworks/gpaslib/model/i;->m:[B

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/felicanetworks/gpaslib/model/i;->n:[B

    .line 64
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/felicanetworks/gpaslib/model/i;->o:[B

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/felicanetworks/gpaslib/model/i;->p:[B

    .line 74
    new-array v0, v2, [B

    const/16 v1, 0x4c

    aput-byte v1, v0, v3

    sput-object v0, Lcom/felicanetworks/gpaslib/model/i;->q:[B

    .line 76
    new-array v0, v2, [B

    const/16 v1, 0x47

    aput-byte v1, v0, v3

    sput-object v0, Lcom/felicanetworks/gpaslib/model/i;->r:[B

    return-void

    .line 51
    nop

    :array_0
    .array-data 1
        -0x2dt
        -0x6et
        0x10t
        0x0t
        0x69t
        0x1t
        0x40t
        0x4dt
        0x4dt
    .end array-data

    .line 56
    nop

    :array_1
    .array-data 1
        -0x80t
        -0x36t
        0x0t
    .end array-data

    .line 60
    :array_2
    .array-data 1
        -0x80t
        0x38t
        0x0t
        0x0t
    .end array-data

    .line 64
    :array_3
    .array-data 1
        -0x80t
        0x3at
        0x0t
    .end array-data

    .line 68
    :array_4
    .array-data 1
        0x6at
        -0x7et
    .end array-data
.end method

.method protected constructor <init>(Lcom/felicanetworks/gpaslib/model/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/felicanetworks/gpaslib/model/f;-><init>(Lcom/felicanetworks/gpaslib/model/b;)V

    .line 96
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 422
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/i;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 424
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/i;->c:Lcom/felicanetworks/gpaslib/model/b;

    iget-object v0, v0, Lcom/felicanetworks/gpaslib/model/b;->a:Landroid/content/Context;

    .line 425
    :try_start_0
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 429
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 440
    return-object v0

    .line 430
    :catch_0
    move-exception v0

    .line 432
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/i;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v2, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "uses-permission not defined"

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 433
    new-instance v1, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v2, 0x7

    const/16 v3, 0x2a

    invoke-direct {v1, v2, v3, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    .line 437
    throw v1
.end method

.method private f()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 614
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/i;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 616
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 617
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/i;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    sget-object v1, Lcom/felicanetworks/gpaslib/model/i;->l:[B

    invoke-interface {v0, v1}, Lcom/felicanetworks/gpaslib/GpasApduManager;->open([B)V

    .line 624
    const/4 v0, 0x1

    new-array v5, v0, [B

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-byte v1, v5, v0

    .line 627
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasApduCommand;

    sget-object v1, Lcom/felicanetworks/gpaslib/model/i;->n:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    sget-object v2, Lcom/felicanetworks/gpaslib/model/i;->n:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    sget-object v3, Lcom/felicanetworks/gpaslib/model/i;->n:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    sget-object v4, Lcom/felicanetworks/gpaslib/model/i;->n:[B

    const/4 v9, 0x3

    aget-byte v4, v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/felicanetworks/gpaslib/GpasApduCommand;-><init>(BBBB[B)V

    .line 635
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/i;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v1, v0}, Lcom/felicanetworks/gpaslib/GpasApduManager;->process(Lcom/felicanetworks/gpaslib/GpasApduCommand;)Lcom/felicanetworks/gpaslib/GpasApduResponse;

    move-result-object v0

    .line 637
    sget-object v1, Lcom/felicanetworks/gpaslib/model/i;->p:[B

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getSw1Sw2()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/i;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v0}, Lcom/felicanetworks/gpaslib/GpasApduManager;->close()V

    move-object v0, v6

    .line 698
    :goto_0
    return-object v0

    .line 640
    :cond_0
    :try_start_1
    sget-object v1, Lcom/felicanetworks/gpaslib/model/i;->e:[B

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getSw1Sw2()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 642
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x3

    const/16 v2, 0x9

    const-string v3, "unexpected SW1-SW2 has returned"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 645
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/i;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v1}, Lcom/felicanetworks/gpaslib/GpasApduManager;->close()V

    throw v0

    .line 649
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getResponseDataField()[B

    move-result-object v9

    .line 651
    array-length v0, v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 653
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/i;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v0}, Lcom/felicanetworks/gpaslib/GpasApduManager;->close()V

    move-object v0, v6

    goto :goto_0

    .line 657
    :cond_2
    :try_start_3
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasApduCommand;

    sget-object v1, Lcom/felicanetworks/gpaslib/model/i;->o:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    sget-object v2, Lcom/felicanetworks/gpaslib/model/i;->o:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    sget-object v3, Lcom/felicanetworks/gpaslib/model/i;->o:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/felicanetworks/gpaslib/GpasApduCommand;-><init>(BBBB[B)V

    .line 668
    array-length v2, v9

    move v1, v7

    :goto_1
    if-ge v1, v2, :cond_5

    aget-byte v3, v9, v1

    .line 670
    invoke-virtual {v0, v3}, Lcom/felicanetworks/gpaslib/GpasApduCommand;->setP2(B)V

    .line 673
    iget-object v3, p0, Lcom/felicanetworks/gpaslib/model/i;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v3, v0}, Lcom/felicanetworks/gpaslib/GpasApduManager;->process(Lcom/felicanetworks/gpaslib/GpasApduCommand;)Lcom/felicanetworks/gpaslib/GpasApduResponse;

    move-result-object v3

    .line 675
    sget-object v4, Lcom/felicanetworks/gpaslib/model/i;->e:[B

    invoke-virtual {v3}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getSw1Sw2()[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 676
    invoke-virtual {v3}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getResponseDataField()[B

    move-result-object v4

    .line 677
    array-length v4, v4

    if-eqz v4, :cond_3

    .line 678
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 680
    :cond_4
    sget-object v4, Lcom/felicanetworks/gpaslib/model/i;->p:[B

    invoke-virtual {v3}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getSw1Sw2()[B

    move-result-object v3

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3

    .line 682
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x3

    const/16 v2, 0x9

    const-string v3, "unexpected SW1-SW2 has returned"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 685
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 692
    :cond_5
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/i;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v0}, Lcom/felicanetworks/gpaslib/GpasApduManager;->close()V

    .line 696
    invoke-virtual {p0, v8}, Lcom/felicanetworks/gpaslib/model/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method protected final a(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v12, 0x9

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 748
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/i;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v6, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 749
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 751
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/gpaslib/GpasApduResponse;

    .line 752
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getResponseDataField()[B

    move-result-object v0

    invoke-static {v0}, Lcom/felicanetworks/gpaslib/common/h;->a([B)Lcom/felicanetworks/gpaslib/common/g;

    move-result-object v0

    .line 755
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/common/g;->d()Ljava/util/List;

    move-result-object v0

    .line 757
    const/4 v1, 0x2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gt v1, v3, :cond_0

    .line 759
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0x21

    const-string v2, "two or more element found under the root tag"

    invoke-direct {v0, v12, v1, v2}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 763
    throw v0

    .line 766
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/gpaslib/common/g;

    .line 767
    sget-object v1, Lcom/felicanetworks/gpaslib/model/i;->h:[B

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/common/g;->a()[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 769
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0x24

    const-string v2, "application setting tag not found under the root tag"

    invoke-direct {v0, v12, v1, v2}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 773
    throw v0

    .line 777
    :cond_1
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/common/g;->d()Ljava/util/List;

    move-result-object v0

    .line 787
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/gpaslib/common/g;

    .line 788
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/common/g;->a()[B

    move-result-object v10

    .line 790
    sget-object v11, Lcom/felicanetworks/gpaslib/model/i;->i:[B

    invoke-static {v11, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 792
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/common/g;->c()[B

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    .line 793
    :cond_2
    sget-object v11, Lcom/felicanetworks/gpaslib/model/i;->q:[B

    invoke-static {v11, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 795
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/common/g;->c()[B

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 796
    :cond_3
    sget-object v11, Lcom/felicanetworks/gpaslib/model/i;->r:[B

    invoke-static {v11, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 798
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/common/g;->c()[B

    move-result-object v0

    :goto_2
    move-object v1, v0

    goto :goto_1

    .line 802
    :cond_4
    if-nez v4, :cond_5

    .line 804
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0x25

    const-string v2, "aid tag not found under the application template tag"

    invoke-direct {v0, v12, v1, v2}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 808
    throw v0

    .line 809
    :cond_5
    if-nez v3, :cond_6

    .line 811
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0x27

    const-string v2, "contactless access status tag not found under the application template tag"

    invoke-direct {v0, v12, v1, v2}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 815
    throw v0

    .line 816
    :cond_6
    if-nez v1, :cond_7

    .line 818
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0x28

    const-string v2, "application type tag not found under the application template tag"

    invoke-direct {v0, v12, v1, v2}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    .line 822
    throw v0

    .line 825
    :cond_7
    aget-byte v0, v3, v5

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v6, :cond_a

    move v0, v5

    .line 831
    :goto_3
    aget-byte v1, v1, v5

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v6, :cond_9

    move v1, v6

    .line 837
    :goto_4
    new-instance v3, Lcom/felicanetworks/gpaslib/GpasContactlessService;

    invoke-direct {v3, v4, v1, v5, v0}, Lcom/felicanetworks/gpaslib/GpasContactlessService;-><init>([BIBB)V

    .line 842
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 845
    :cond_8
    return-object v7

    :cond_9
    move v1, v5

    goto :goto_4

    :cond_a
    move v0, v6

    goto :goto_3

    :cond_b
    move-object v0, v1

    goto :goto_2
.end method

.method public final a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/i;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/i;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/i;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    sget-object v1, Lcom/felicanetworks/gpaslib/model/i;->l:[B

    invoke-interface {v0, v1}, Lcom/felicanetworks/gpaslib/GpasApduManager;->open([B)V
    :try_end_1
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :try_start_2
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/i;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v5, v0, [B

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-byte v1, v5, v0

    new-instance v0, Lcom/felicanetworks/gpaslib/GpasApduCommand;

    sget-object v1, Lcom/felicanetworks/gpaslib/model/i;->m:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    sget-object v2, Lcom/felicanetworks/gpaslib/model/i;->m:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    sget-object v3, Lcom/felicanetworks/gpaslib/model/i;->m:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/felicanetworks/gpaslib/GpasApduCommand;-><init>(BBBB[B)V

    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/i;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v1, v0}, Lcom/felicanetworks/gpaslib/GpasApduManager;->process(Lcom/felicanetworks/gpaslib/GpasApduCommand;)Lcom/felicanetworks/gpaslib/GpasApduResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getSw1Sw2()[B

    move-result-object v2

    sget-object v3, Lcom/felicanetworks/gpaslib/model/i;->e:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x3

    const/16 v2, 0x9

    const-string v3, "unexpected SW1-SW2 has returned"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/i;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v1}, Lcom/felicanetworks/gpaslib/GpasApduManager;->close()V

    throw v0

    .line 120
    :catch_0
    move-exception v0

    const/16 v1, 0x10

    :try_start_3
    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasException;->getID()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/16 v1, 0x14

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasException;->getType()I

    move-result v2

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x7

    const/4 v2, 0x5

    const-string v3, "Card Specification is not supported on this card"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    :cond_0
    throw v0

    .line 122
    :cond_1
    sget-object v2, Lcom/felicanetworks/gpaslib/model/i;->k:[B

    invoke-virtual {v1}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getResponseDataField()[B

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x7

    const/4 v2, 0x6

    const-string v3, "contactless status \'closed\' detected"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/i;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v2, 0x4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "contactless status \'opened\' detected"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/gpaslib/GpasApduCommand;->setP2(B)V

    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/i;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v1, v0}, Lcom/felicanetworks/gpaslib/GpasApduManager;->process(Lcom/felicanetworks/gpaslib/GpasApduCommand;)Lcom/felicanetworks/gpaslib/GpasApduResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getSw1Sw2()[B

    move-result-object v1

    sget-object v2, Lcom/felicanetworks/gpaslib/model/i;->e:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x3

    const/16 v2, 0x9

    const-string v3, "unexpected SW1-SW2 has returned"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    :cond_3
    sget-object v1, Lcom/felicanetworks/gpaslib/model/i;->j:[B

    invoke-virtual {v0}, Lcom/felicanetworks/gpaslib/GpasApduResponse;->getResponseDataField()[B

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x7

    const/4 v2, 0x6

    const-string v3, "remote lock detected"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/i;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "remote lock has not detected"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/i;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v0}, Lcom/felicanetworks/gpaslib/GpasApduManager;->close()V

    .line 124
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/i;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/felicanetworks/gpaslib/model/i;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "898130"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "issuer is not supported"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0

    :cond_6
    iput-object v0, p0, Lcom/felicanetworks/gpaslib/model/i;->b:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/i;->a:Lcom/felicanetworks/gpaslib/GpasApduManager;

    invoke-interface {v0}, Lcom/felicanetworks/gpaslib/GpasApduManager;->close()V

    .line 128
    return-void
.end method

.method protected final d()Lcom/felicanetworks/gpaslib/model/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/i;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 485
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0xa

    const/16 v2, 0x29

    const-string v3, "This method is not supported"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0
.end method

.method public final getGpasContactlessService([B)Lcom/felicanetworks/gpaslib/GpasContactlessService;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation

    .prologue
    .line 873
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/i;->c:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 875
    new-instance v0, Lcom/felicanetworks/gpaslib/GpasException;

    const/16 v1, 0x9

    const/16 v2, 0x29

    const-string v3, "This method is not supported"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/String;)V

    throw v0
.end method

.method public final getGpasContactlessServiceList()Ljava/util/List;
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

    .line 527
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/i;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 530
    :try_start_0
    invoke-direct {p0}, Lcom/felicanetworks/gpaslib/model/i;->f()Ljava/util/List;
    :try_end_0
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 541
    return-object v0

    .line 531
    :catch_0
    move-exception v0

    .line 532
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/model/i;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v4, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 533
    throw v0

    .line 534
    :catch_1
    move-exception v0

    .line 535
    new-instance v1, Lcom/felicanetworks/gpaslib/GpasException;

    invoke-direct {v1, v2, v2, v0}, Lcom/felicanetworks/gpaslib/GpasException;-><init>(IILjava/lang/Throwable;)V

    .line 538
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/model/i;->c:Lcom/felicanetworks/gpaslib/model/b;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v0, v4, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 539
    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 894
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 895
    invoke-super {p0}, Lcom/felicanetworks/gpaslib/model/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 898
    const-string v1, ",ClassName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 899
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 900
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 902
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

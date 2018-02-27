.class public Lcom/felicanetworks/mfc/ServiceUtil;
.super Ljava/lang/Object;
.source "ServiceUtil.java"


# static fields
.field private static final ATTRIBUTE_AREA:I = 0x1

.field private static final ATTRIBUTE_AREA_APPENDABLE:I = 0x0

.field private static final ATTRIBUTE_ATTRIBUTE_MASK:I = 0x3f

.field private static final ATTRIBUTE_CYCLIC:I = 0xd

.field private static final ATTRIBUTE_CYCLIC_ENCRYPTED:I = 0xc

.field private static final ATTRIBUTE_CYCLIC_READ_ONLY:I = 0xf

.field private static final ATTRIBUTE_CYCLIC_READ_ONLY_ENCRYPTED:I = 0xe

.field private static final ATTRIBUTE_PIN_FOR_AREA:I = 0x21

.field private static final ATTRIBUTE_PIN_FOR_AREA_APPENDABLE:I = 0x20

.field private static final ATTRIBUTE_PIN_FOR_CYCLIC:I = 0x2d

.field private static final ATTRIBUTE_PIN_FOR_CYCLIC_ENCRYPTED:I = 0x2c

.field private static final ATTRIBUTE_PIN_FOR_CYCLIC_READ_ONLY:I = 0x2f

.field private static final ATTRIBUTE_PIN_FOR_CYCLIC_READ_ONLY_ENCRYPTED:I = 0x2e

.field private static final ATTRIBUTE_PIN_FOR_PURSE:I = 0x31

.field private static final ATTRIBUTE_PIN_FOR_PURSE_CASH_BACK:I = 0x33

.field private static final ATTRIBUTE_PIN_FOR_PURSE_CASH_BACK_ENCRYPTED:I = 0x32

.field private static final ATTRIBUTE_PIN_FOR_PURSE_DECREMENT:I = 0x35

.field private static final ATTRIBUTE_PIN_FOR_PURSE_DECREMENT_ENCRYPTED:I = 0x34

.field private static final ATTRIBUTE_PIN_FOR_PURSE_ENCRYPTED:I = 0x30

.field private static final ATTRIBUTE_PIN_FOR_PURSE_READ_ONLY:I = 0x37

.field private static final ATTRIBUTE_PIN_FOR_PURSE_READ_ONLY_ENCRYPTED:I = 0x36

.field private static final ATTRIBUTE_PIN_FOR_RANDOM:I = 0x29

.field private static final ATTRIBUTE_PIN_FOR_RANDOM_ENCRYPTED:I = 0x28

.field private static final ATTRIBUTE_PIN_FOR_RANDOM_READ_ONLY:I = 0x2b

.field private static final ATTRIBUTE_PIN_FOR_RANDOM_READ_ONLY_ENCRYPTED:I = 0x2a

.field private static final ATTRIBUTE_PURSE:I = 0x11

.field private static final ATTRIBUTE_PURSE_CASH_BACK:I = 0x13

.field private static final ATTRIBUTE_PURSE_CASH_BACK_ENCRYPTED:I = 0x12

.field private static final ATTRIBUTE_PURSE_DECREMENT:I = 0x15

.field private static final ATTRIBUTE_PURSE_DECREMENT_ENCRYPTED:I = 0x14

.field private static final ATTRIBUTE_PURSE_ENCRYPTED:I = 0x10

.field private static final ATTRIBUTE_PURSE_READ_ONLY:I = 0x17

.field private static final ATTRIBUTE_PURSE_READ_ONLY_ENCRYPTED:I = 0x16

.field private static final ATTRIBUTE_RANDOM:I = 0x9

.field private static final ATTRIBUTE_RANDOM_ENCRYPTED:I = 0x8

.field private static final ATTRIBUTE_RANDOM_READ_ONLY:I = 0xb

.field private static final ATTRIBUTE_RANDOM_READ_ONLY_ENCRYPTED:I = 0xa

.field private static final EXC_INVALID_AREA_ATTRIBUTE_VALUE:Ljava/lang/String; = "The attribute value of the specified Service Code is invalid."

.field private static final EXC_INVALID_ATTRIBUTE_VALUE:Ljava/lang/String; = "The attribute value of the specified Service Code is invalid."

.field private static final EXC_INVALID_BLOCK:Ljava/lang/String; = "The specified Block is null."

.field private static final EXC_INVALID_BLOCK_FOR_READ:Ljava/lang/String; = "The specified Block is invalid for reading."

.field private static final EXC_INVALID_BLOCK_NO:Ljava/lang/String; = "The Block No must be 0x0000 to 0xffff."

.field private static final EXC_INVALID_COMBINATION:Ljava/lang/String; = "The combination of the Block and the Data is invalid."

.field private static final EXC_INVALID_DATA:Ljava/lang/String; = "The specified Data is null."

.field private static final EXC_INVALID_END_SERVICE_ATTRIBUTE_VALUE:Ljava/lang/String; = "The attribute value of the specified End Service Code is invalid."

.field private static final EXC_INVALID_NODE_ATTRIBUTE_VALUE:Ljava/lang/String; = "The attribute value of the specified Node Code is invalid."

.field private static final EXC_INVALID_SERVICE_ATTRIBUTE_VALUE:Ljava/lang/String; = "The attribute value of the specified Service Code is invalid."

.field private static final MAX_BLOCK_NO:I = 0xffff

.field private static final MAX_SERVICE_CODE:I = -0x1

.field private static final MAX_SERVICE_CODE_NODECODESIZE_2:I = 0xffff

.field private static final MIN_BLOCK_NO:I

.field private static instance:Lcom/felicanetworks/mfc/ServiceUtil;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    return-void
.end method

.method public static getInstance()Lcom/felicanetworks/mfc/ServiceUtil;
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lcom/felicanetworks/mfc/ServiceUtil;->instance:Lcom/felicanetworks/mfc/ServiceUtil;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lcom/felicanetworks/mfc/ServiceUtil;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/ServiceUtil;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/ServiceUtil;->instance:Lcom/felicanetworks/mfc/ServiceUtil;

    .line 298
    :cond_0
    sget-object v0, Lcom/felicanetworks/mfc/ServiceUtil;->instance:Lcom/felicanetworks/mfc/ServiceUtil;

    return-object v0
.end method


# virtual methods
.method public checkAreaCode(I)V
    .locals 7
    .param p1, "areaCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 592
    const-string v0, "%s In areaCode = %d"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "000 checkAreaCode"

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 594
    and-int/lit8 v0, p1, 0x3f

    packed-switch v0, :pswitch_data_0

    .line 601
    const-string v0, "%s (areaCode & ATTRIBUTE_ATTRIBUTE_MASK) = %d"

    new-array v1, v5, [Ljava/lang/Object;

    .line 602
    const-string v2, "801 checkAreaCode"

    aput-object v2, v1, v4

    and-int/lit8 v2, p1, 0x3f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 600
    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 603
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The attribute value of the specified Service Code is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :pswitch_0
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "999 checkAreaCode"

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 598
    return-void

    .line 594
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public checkBlock(Lcom/felicanetworks/mfc/Block;Z)V
    .locals 2
    .param p1, "block"    # Lcom/felicanetworks/mfc/Block;
    .param p2, "checkType"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 539
    if-nez p1, :cond_0

    .line 540
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified Block is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_0
    if-eqz p2, :cond_1

    .line 543
    invoke-virtual {p1}, Lcom/felicanetworks/mfc/Block;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 574
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified Block is invalid for reading."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_1
    :pswitch_0
    return-void

    .line 543
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public checkBlockData(Lcom/felicanetworks/mfc/Block;Lcom/felicanetworks/mfc/Data;)V
    .locals 2
    .param p1, "block"    # Lcom/felicanetworks/mfc/Block;
    .param p2, "data"    # Lcom/felicanetworks/mfc/Data;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 463
    if-nez p1, :cond_0

    .line 464
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified Block is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_0
    if-nez p2, :cond_1

    .line 467
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified Data is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_1
    invoke-virtual {p1}, Lcom/felicanetworks/mfc/Block;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 523
    :cond_2
    :goto_0
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The combination of the Block and the Data is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :pswitch_1
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/Data;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 519
    :goto_1
    :pswitch_2
    return-void

    .line 476
    :pswitch_3
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/Data;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 481
    :pswitch_4
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/Data;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 486
    :pswitch_5
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/Data;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 493
    :pswitch_6
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/Data;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 515
    :pswitch_7
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/Data;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 486
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 515
    :pswitch_data_2
    .packed-switch 0x6
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public checkBlockNo(I)V
    .locals 2
    .param p1, "blockNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 445
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Block No must be 0x0000 to 0xffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_1
    return-void
.end method

.method public checkEndServiceCode(I)V
    .locals 7
    .param p1, "endServiceCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 700
    const-string v0, "%s In serviceCode = %d"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "000 checkEndServiceCode"

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 702
    and-int/lit8 v0, p1, 0x3f

    packed-switch v0, :pswitch_data_0

    .line 708
    const-string v0, "%s (endServiceCode & ATTRIBUTE_ATTRIBUTE_MASK) = %d"

    new-array v1, v5, [Ljava/lang/Object;

    .line 709
    const-string v2, "801 checkEndServiceCode"

    aput-object v2, v1, v4

    and-int/lit8 v2, p1, 0x3f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 707
    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 710
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The attribute value of the specified End Service Code is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :pswitch_0
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "999 checkEndServiceCode"

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 705
    return-void

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_0
    .end packed-switch
.end method

.method public checkNodeCode(I)V
    .locals 7
    .param p1, "nodeCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 618
    const-string v0, "%s In nodeCode = %d"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "000 checkNodeCode"

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 620
    and-int/lit8 v0, p1, 0x3f

    packed-switch v0, :pswitch_data_0

    .line 643
    :pswitch_0
    const-string v0, "%s (nodeCode & ATTRIBUTE_ATTRIBUTE_MASK) = %d"

    new-array v1, v5, [Ljava/lang/Object;

    .line 644
    const-string v2, "801 checkNodeCode"

    aput-object v2, v1, v4

    and-int/lit8 v2, p1, 0x3f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 642
    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 645
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The attribute value of the specified Node Code is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :pswitch_1
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "999 checkNodeCode"

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 640
    return-void

    .line 620
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public checkServiceCode(I)V
    .locals 7
    .param p1, "serviceCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 660
    const-string v0, "%s In serviceCode = %d"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "000 checkServiceCode"

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 662
    and-int/lit8 v0, p1, 0x3f

    packed-switch v0, :pswitch_data_0

    .line 683
    const-string v0, "%s (serviceCode & ATTRIBUTE_ATTRIBUTE_MASK) = %d"

    new-array v1, v5, [Ljava/lang/Object;

    .line 684
    const-string v2, "801 checkServiceCode"

    aput-object v2, v1, v4

    and-int/lit8 v2, p1, 0x3f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 682
    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 685
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The attribute value of the specified Service Code is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :pswitch_0
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "999 checkServiceCode"

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 680
    return-void

    .line 662
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public checkServiceCode(II)V
    .locals 2
    .param p1, "serviceCode"    # I
    .param p2, "nodeCodeSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const v1, 0xffff

    .line 311
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 312
    and-int v0, p1, v1

    if-ne v0, v1, :cond_2

    .line 358
    :cond_0
    :pswitch_0
    return-void

    .line 316
    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 321
    :cond_2
    and-int/lit8 v0, p1, 0x3f

    packed-switch v0, :pswitch_data_0

    .line 360
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The attribute value of the specified Service Code is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getBlockType(I)I
    .locals 2
    .param p1, "serviceCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 376
    and-int/lit8 v0, p1, 0x3f

    packed-switch v0, :pswitch_data_0

    .line 430
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The attribute value of the specified Service Code is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :pswitch_1
    const/4 v0, 0x1

    .line 428
    :goto_0
    return v0

    .line 380
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 382
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 384
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 386
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 388
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 390
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 392
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 394
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 396
    :pswitch_a
    const/16 v0, 0xa

    goto :goto_0

    .line 398
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 400
    :pswitch_c
    const/16 v0, 0xc

    goto :goto_0

    .line 402
    :pswitch_d
    const/16 v0, 0xd

    goto :goto_0

    .line 404
    :pswitch_e
    const/16 v0, 0xe

    goto :goto_0

    .line 406
    :pswitch_f
    const/16 v0, 0xf

    goto :goto_0

    .line 408
    :pswitch_10
    const/16 v0, 0x10

    goto :goto_0

    .line 410
    :pswitch_11
    const/16 v0, 0x11

    goto :goto_0

    .line 412
    :pswitch_12
    const/16 v0, 0x12

    goto :goto_0

    .line 414
    :pswitch_13
    const/16 v0, 0x13

    goto :goto_0

    .line 416
    :pswitch_14
    const/16 v0, 0x14

    goto :goto_0

    .line 418
    :pswitch_15
    const/16 v0, 0x15

    goto :goto_0

    .line 420
    :pswitch_16
    const/16 v0, 0x16

    goto :goto_0

    .line 422
    :pswitch_17
    const/16 v0, 0x17

    goto :goto_0

    .line 424
    :pswitch_18
    const/16 v0, 0x18

    goto :goto_0

    .line 426
    :pswitch_19
    const/16 v0, 0x19

    goto :goto_0

    .line 428
    :pswitch_1a
    const/16 v0, 0x1a

    goto :goto_0

    .line 376
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

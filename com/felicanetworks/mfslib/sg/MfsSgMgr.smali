.class public Lcom/felicanetworks/mfslib/sg/MfsSgMgr;
.super Lcom/felicanetworks/cmnlib/sg/SgMgr;
.source "MfsSgMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;
    }
.end annotation


# static fields
.field public static final KEY_GPAS_ACCESS_TIMEOUT:I = 0x8a

.field public static final KEY_SRV_ENCODED_ISSUE_INFO:I = 0x1b

.field public static final KEY_SRV_TICKET_AUTHEN_READ_TIMEOUT:I = 0x33

.field public static final KEY_SRV_TICKET_AUTHEN_SESS_TIMEOUT:I = 0x1a

.field public static final KEY_SRV_TICKET_AUTHEN_URL:I = 0x19

.field public static final KEY_SRV_TICKET_EXPIRATION_INTERVAL:I = 0x35

.field public static final KEY_UICC_ACCESS_TIMEOUT:I = 0x8b

.field public static final KEY_UI_DISCLAMER_CHKBOX:I = 0x8e

.field public static final KEY_UI_DISCLAMER_LINK_STRING:I = 0x44

.field public static final KEY_UI_DISCLAMER_MESSAGE_F:I = 0x43

.field public static final KEY_UI_DISCLAMER_MESSAGE_FU:I = 0x8d

.field public static final KEY_UI_DISCLAMER_MESSAGE_U:I = 0x8c

.field public static final KEY_UI_DISCLAMER_URL:I = 0x45

.field protected static final RES_ID_APP_ID:I = 0x7f050002

.field protected static final RES_ID_APP_NAME:I = 0x7f050006

.field protected static final RES_ID_APP_SG_FILEPATH:I = 0x7f050001

.field protected static final RES_ID_COMMON_SG_FILEPATH:I = 0x7f050000

.field protected static final RES_ID_DISCLAMER_SEARCH_STR:I = 0x7f050007

.field protected static final RES_ID_ERROR_LOG_LIMIT:I = 0x7f050005

.field protected static final RES_ID_MANAGE_SYSTEM_CODE:I = 0x7f050004

.field protected static final RES_ID_MFC_DATA_RECEIVING_MESSAGE:I = 0x7f050065

.field protected static final RES_ID_MFC_PACKAGE_NAME:I = 0x7f050008

.field protected static final RES_ID_MFC_PERMISSION:I = 0x7f050009

.field protected static final RES_ID_PLATFORM_KIND:I = 0x7f050003

.field protected static final RES_ID_UICC_ADDON_START_ACT_NAME:I = 0x7f05000b

.field protected static final RES_ID_UICC_ADDON_START_PKG_NAME:I = 0x7f05000a


# instance fields
.field private specialSgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;",
            ">;"
        }
    .end annotation
.end field

.field private supportedIndividualSgInformationTable:[[I


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfslib/MfsAppContext;)V
    .locals 4
    .param p1, "context"    # Lcom/felicanetworks/mfslib/MfsAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x7

    .line 254
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/sg/SgMgr;-><init>(Lcom/felicanetworks/cmnlib/AppContext;)V

    .line 95
    const/16 v0, 0x10

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v3

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->supportedIndividualSgInformationTable:[[I

    .line 262
    return-void

    .line 95
    :array_0
    .array-data 4
        0x1000009
        0x201
        0x1
        0x8
        0x1
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x100000a
        0x202
        0x1
        0x2
        0x1
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1000016
        0x30a
        0x1
        0x3e7
        0x10
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x1000017
        0x30b
        0x1
        0x8
        0x1
        0x0
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x1000018
        0x30c
        0x1
        0x40
        0x80
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x19
        0x30d
        0x1
        0x3e7
        0x10
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x1a
        0x30e
        0x1
        0x8
        0x1
        0x0
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x1b
        0x30f
        0x1
        0x270f
        0x2
        0x0
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x33
        0x315
        0x1
        0x8
        0x1
        0x0
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x1000034
        0x316
        0x1
        0x8
        0x1
        0x0
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x35
        0x317
        0x1
        0x6
        0x1
        0x0
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x100001f
        0x501
        0x0
        0x1
        0x80
        0x0
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x100002b
        0x801
        0x2
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x100001c
        0x1
        0x0
        0x16
        0x2
        0x0
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x8a
        0xc01
        0x1
        0x8
        0x1
        0x1
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x8b
        0xc02
        0x1
        0x8
        0x1
        0x1
        0x1
    .end array-data
.end method

.method private createSpecialSgList()V
    .locals 6

    .prologue
    const/16 v5, 0x45

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->specialSgList:Ljava/util/List;

    .line 155
    iget-object v1, p0, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->specialSgList:Ljava/util/List;

    new-instance v2, Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;

    const/16 v3, 0x43

    const/high16 v4, 0x7f060000

    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v1, p0, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->specialSgList:Ljava/util/List;

    new-instance v2, Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;

    const/16 v3, 0x8c

    const v4, 0x7f060003

    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v1, p0, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->specialSgList:Ljava/util/List;

    new-instance v2, Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;

    const/16 v3, 0x8d

    const v4, 0x7f060004

    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v1, p0, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->specialSgList:Ljava/util/List;

    new-instance v2, Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;

    const/16 v3, 0x44

    const v4, 0x7f060001

    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v1, p0, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->specialSgList:Ljava/util/List;

    new-instance v2, Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;

    const/16 v3, 0x8e

    const v4, 0x7f060006

    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    const v1, 0x1000082

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->getSgValue(I)Ljava/lang/Object;

    .line 167
    iget-object v1, p0, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->specialSgList:Ljava/util/List;

    new-instance v2, Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;

    const/16 v3, 0x45

    const v4, 0x7f060005

    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/felicanetworks/cmnlib/sg/SgMgrException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Lcom/felicanetworks/cmnlib/sg/SgMgrException;
    iget-object v1, p0, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->specialSgList:Ljava/util/List;

    new-instance v2, Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;

    const v3, 0x7f060002

    invoke-direct {v2, v5, v3}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected checkParamAdjustment()V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->getResourceValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->getResourceValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAppSgFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->getResourceValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassCode()I
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x1

    return v0
.end method

.method protected getCommonSgFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->getResourceValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisclamerSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->getResourceValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorLogLimit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->getResourceValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 514
    const/16 v0, 0x25

    return v0
.end method

.method protected getIndividualSgCheckerTable()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/felicanetworks/cmnlib/util/DataCheckerInterface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 235
    .local v0, "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/felicanetworks/cmnlib/util/DataCheckerInterface;>;"
    const v1, 0x1000018

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/felicanetworks/cmnlib/sg/SgMgr$TimezoneChecker;

    invoke-direct {v2, p0}, Lcom/felicanetworks/cmnlib/sg/SgMgr$TimezoneChecker;-><init>(Lcom/felicanetworks/cmnlib/sg/SgMgr;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const v1, 0x100001f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/felicanetworks/cmnlib/sg/SgMgr$LogOutputFlagChecker;

    invoke-direct {v2, p0}, Lcom/felicanetworks/cmnlib/sg/SgMgr$LogOutputFlagChecker;-><init>(Lcom/felicanetworks/cmnlib/sg/SgMgr;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-object v0
.end method

.method protected getIndividualSupportedSgInformationTable()[[I
    .locals 8

    .prologue
    .line 322
    iget-object v6, p0, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->supportedIndividualSgInformationTable:[[I

    invoke-virtual {v6}, [[I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 324
    .local v1, "cloneArray":[[I
    const v6, 0x7f050002

    invoke-virtual {p0, v6}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->getResourceValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->getAppIdMask(Ljava/lang/String;)I

    move-result v4

    .line 325
    .local v4, "mask":I
    move-object v0, v1

    .local v0, "arr$":[[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 326
    .local v5, "record":[I
    const/4 v6, 0x1

    aget v7, v5, v6

    or-int/2addr v7, v4

    aput v7, v5, v6

    .line 325
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    .end local v5    # "record":[I
    :cond_0
    return-object v1
.end method

.method public getManageSystemCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->getResourceValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMfcDataReceivingMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    const v0, 0x7f050065

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->getResourceValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMfcPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->getResourceValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMfcPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->getResourceValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->getResourceValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSpecialSgTable()[[I
    .locals 6

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->createSpecialSgList()V

    .line 191
    iget-object v3, p0, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->specialSgList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 192
    .local v2, "specialSgListSize":I
    const/4 v3, 0x2

    filled-new-array {v2, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 193
    .local v1, "ret":[[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 194
    aget-object v4, v1, v0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->specialSgList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;

    iget v3, v3, Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;->logicalKey:I

    aput v3, v4, v5

    .line 195
    aget-object v4, v1, v0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->specialSgList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;

    iget v3, v3, Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;->physicalKey:I

    aput v3, v4, v5

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    return-object v1
.end method

.method public getUiccAddonStartActName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->getResourceValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUiccAddonStartPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->getResourceValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

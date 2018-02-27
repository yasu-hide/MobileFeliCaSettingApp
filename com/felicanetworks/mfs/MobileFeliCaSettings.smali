.class public Lcom/felicanetworks/mfs/MobileFeliCaSettings;
.super Landroid/app/Activity;
.source "MobileFeliCaSettings.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfs/MobileFeliCaSettings$2;,
        Lcom/felicanetworks/mfs/MobileFeliCaSettings$InitAppImpl;,
        Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;,
        Lcom/felicanetworks/mfs/MobileFeliCaSettings$ResultFromAddonUicc;,
        Lcom/felicanetworks/mfs/MobileFeliCaSettings$ResultCheckBox;,
        Lcom/felicanetworks/mfs/MobileFeliCaSettings$ResultUicc;,
        Lcom/felicanetworks/mfs/MobileFeliCaSettings$ResultFelica;,
        Lcom/felicanetworks/mfs/MobileFeliCaSettings$Result;
    }
.end annotation


# static fields
.field public static final PARAM_DEFAULT_VALUE_CHECKBOX:Z = false

.field public static final PARAM_DEFAULT_VALUE_NEED_UICC:I = 0x0

.field public static final PARAM_KEY_CHECKBOX:Ljava/lang/String; = "com.felicanetworks.mfs.mfmchkbxflg"

.field public static final PARAM_KEY_NEED_UICC:Ljava/lang/String; = "com.felicanetworks.mfs.param"

.field public static final PARAM_VALUE_FELICA_UICC:I = 0x1

.field public static final REQUEST_CODE_ADDON_UICC:I = 0x3e8

.field public static final REQUEST_KEY_ADDON_UICC_LOGCAT_ENABLE:Ljava/lang/String; = "com.felicanetworks.mfs.addon.uicc.d.LOGCAT_ENABLE"

.field public static final RESULT_KEY_CHKBOX:Ljava/lang/String; = "com.felicanetworks.mfs.result.chkbx"

.field public static final RESULT_KEY_FELICA:Ljava/lang/String; = "com.felicanetworks.mfs.result.felica"

.field public static final RESULT_KEY_UICC:Ljava/lang/String; = "com.felicanetworks.mfs.result.uicc"

.field private static _lastAppData:Lcom/felicanetworks/cmnview/TransferStateData;

.field private static _lastAppStatus:I

.field private static _myInstanceCnt:I


# instance fields
.field private _cflInst:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

.field private _context:Lcom/felicanetworks/mfslib/MfsAppContext;

.field private _isAlive:Z

.field private _isStartActivityForResult:Z

.field private _needUiccInit:Z

.field private _needcheckbox:Z

.field private _viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

.field private defaultResultIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    sput v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_myInstanceCnt:I

    .line 138
    sput v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_lastAppStatus:I

    .line 139
    const/4 v0, 0x0

    sput-object v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_lastAppData:Lcom/felicanetworks/cmnview/TransferStateData;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    iput-object v2, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    .line 102
    new-instance v0, Lcom/felicanetworks/cmnview/ViewLayer;

    invoke-direct {v0}, Lcom/felicanetworks/cmnview/ViewLayer;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    .line 105
    iput-object v2, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_cflInst:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    .line 109
    iput-boolean v1, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_isAlive:Z

    .line 112
    iput-boolean v1, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_isStartActivityForResult:Z

    .line 1342
    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 67
    sput p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_lastAppStatus:I

    return p0
.end method

.method static synthetic access$102(Lcom/felicanetworks/cmnview/TransferStateData;)Lcom/felicanetworks/cmnview/TransferStateData;
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/cmnview/TransferStateData;

    .prologue
    .line 67
    sput-object p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_lastAppData:Lcom/felicanetworks/cmnview/TransferStateData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->showResultView()V

    return-void
.end method

.method static synthetic access$400(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/mfslib/MfsAppContext;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    return-object v0
.end method

.method static synthetic access$500(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_isAlive:Z

    return v0
.end method

.method static synthetic access$600(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->destroyProc()V

    return-void
.end method

.method private checkLastAppStatus()Z
    .locals 3

    .prologue
    .line 638
    const/4 v0, 0x0

    .line 639
    .local v0, "ret":Z
    sget v1, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_lastAppStatus:I

    sparse-switch v1, :sswitch_data_0

    .line 659
    :goto_0
    return v0

    .line 647
    :sswitch_0
    sget v1, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_lastAppStatus:I

    sget-object v2, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_lastAppData:Lcom/felicanetworks/cmnview/TransferStateData;

    invoke-static {v1, v2}, Lcom/felicanetworks/cmnview/TransferState;->transferState(ILcom/felicanetworks/cmnview/TransferStateData;)V

    .line 648
    const/4 v0, 0x1

    .line 649
    goto :goto_0

    .line 639
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x1e -> :sswitch_0
        0x1f -> :sswitch_0
        0x22 -> :sswitch_0
    .end sparse-switch
.end method

.method private destroyProc()V
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_isAlive:Z

    if-eqz v0, :cond_1

    .line 404
    sget v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_myInstanceCnt:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_myInstanceCnt:I

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_isAlive:Z

    .line 409
    iget-object v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    iget-object v0, v0, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    if-eqz v0, :cond_0

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    iget-object v0, v0, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    invoke-virtual {v0}, Lcom/felicanetworks/cmnview/BaseView;->onActivityDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 424
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_cflInst:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    if-eqz v0, :cond_1

    .line 429
    :try_start_1
    iget-object v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_cflInst:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->deinitializeApplication()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 442
    :cond_1
    :goto_1
    return-void

    .line 430
    :catch_0
    move-exception v0

    goto :goto_1

    .line 415
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private nextViewOnFelica(Lcom/felicanetworks/mfs/AppStatus;)V
    .locals 4
    .param p1, "st"    # Lcom/felicanetworks/mfs/AppStatus;

    .prologue
    .line 1546
    iget-object v1, p1, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v2, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_SUCCESS:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v1, v2, :cond_0

    .line 1550
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/felicanetworks/cmnview/TransferState;->transferState(I)V

    .line 1560
    :goto_0
    return-void

    .line 1553
    :cond_0
    iget-object v1, p1, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v2, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_CANCEL:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v1, v2, :cond_1

    .line 1557
    new-instance v0, Lcom/felicanetworks/mfs/MfsTransferStateData_Result;

    invoke-direct {v0}, Lcom/felicanetworks/mfs/MfsTransferStateData_Result;-><init>()V

    .line 1558
    .local v0, "data":Lcom/felicanetworks/mfs/MfsTransferStateData_Result;
    const/4 v1, 0x0

    iput v1, v0, Lcom/felicanetworks/mfs/MfsTransferStateData_Result;->result:I

    .line 1559
    const/16 v1, 0x1a

    invoke-static {v1, v0}, Lcom/felicanetworks/cmnview/TransferState;->transferState(ILcom/felicanetworks/cmnview/TransferStateData;)V

    goto :goto_0

    .line 1565
    .end local v0    # "data":Lcom/felicanetworks/mfs/MfsTransferStateData_Result;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private nextViewOnFelicaUicc(Lcom/felicanetworks/mfs/AppStatus;)V
    .locals 4
    .param p1, "st"    # Lcom/felicanetworks/mfs/AppStatus;

    .prologue
    const/4 v3, 0x4

    .line 1471
    iget-object v1, p1, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v2, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_SUCCESS:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v2, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_SUCCESS:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v1, v2, :cond_0

    .line 1475
    invoke-static {v3}, Lcom/felicanetworks/cmnview/TransferState;->transferState(I)V

    .line 1534
    :goto_0
    return-void

    .line 1478
    :cond_0
    iget-object v1, p1, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v2, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_SUCCESS:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v2, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_DONEINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v1, v2, :cond_1

    .line 1482
    invoke-static {v3}, Lcom/felicanetworks/cmnview/TransferState;->transferState(I)V

    goto :goto_0

    .line 1485
    :cond_1
    iget-object v1, p1, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v2, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_DONEINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v2, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_SUCCESS:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v1, v2, :cond_2

    .line 1489
    invoke-static {v3}, Lcom/felicanetworks/cmnview/TransferState;->transferState(I)V

    goto :goto_0

    .line 1492
    :cond_2
    iget-object v1, p1, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v2, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_SUCCESS:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v1, v2, :cond_3

    iget-object v1, p1, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v2, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_CANCEL:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v1, v2, :cond_3

    .line 1496
    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/felicanetworks/cmnview/TransferState;->transferState(I)V

    goto :goto_0

    .line 1499
    :cond_3
    iget-object v1, p1, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v2, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_DONEINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v1, v2, :cond_4

    iget-object v1, p1, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v2, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_CANCEL:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v1, v2, :cond_4

    .line 1503
    const/16 v1, 0x20

    invoke-static {v1}, Lcom/felicanetworks/cmnview/TransferState;->transferState(I)V

    goto :goto_0

    .line 1506
    :cond_4
    iget-object v1, p1, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v2, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_SUCCESS:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v1, v2, :cond_5

    iget-object v1, p1, Lcom/felicanetworks/mfs/AppStatus;->gpasException:Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;

    if-eqz v1, :cond_5

    .line 1510
    const/16 v1, 0x22

    invoke-static {v1}, Lcom/felicanetworks/cmnview/TransferState;->transferState(I)V

    goto :goto_0

    .line 1513
    :cond_5
    iget-object v1, p1, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v2, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_SUCCESS:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v1, v2, :cond_6

    iget-object v1, p1, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v2, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_FAILED:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v1, v2, :cond_6

    .line 1517
    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/felicanetworks/cmnview/TransferState;->transferState(I)V

    goto :goto_0

    .line 1520
    :cond_6
    iget-object v1, p1, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v2, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_DONEINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v1, v2, :cond_7

    iget-object v1, p1, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v2, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_FAILED:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v1, v2, :cond_7

    .line 1524
    const/16 v1, 0x21

    invoke-static {v1}, Lcom/felicanetworks/cmnview/TransferState;->transferState(I)V

    goto :goto_0

    .line 1527
    :cond_7
    iget-object v1, p1, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v2, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_CANCEL:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v1, v2, :cond_8

    .line 1531
    new-instance v0, Lcom/felicanetworks/mfs/MfsTransferStateData_Result;

    invoke-direct {v0}, Lcom/felicanetworks/mfs/MfsTransferStateData_Result;-><init>()V

    .line 1532
    .local v0, "data":Lcom/felicanetworks/mfs/MfsTransferStateData_Result;
    const/4 v1, 0x0

    iput v1, v0, Lcom/felicanetworks/mfs/MfsTransferStateData_Result;->result:I

    .line 1533
    const/16 v1, 0x1a

    invoke-static {v1, v0}, Lcom/felicanetworks/cmnview/TransferState;->transferState(ILcom/felicanetworks/cmnview/TransferStateData;)V

    goto/16 :goto_0

    .line 1539
    .end local v0    # "data":Lcom/felicanetworks/mfs/MfsTransferStateData_Result;
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setBackScreenView()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    new-instance v1, Lcom/felicanetworks/mfs/view/BackScreenView;

    invoke-direct {v1, p0}, Lcom/felicanetworks/mfs/view/BackScreenView;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    .line 307
    iget-object v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 308
    iget-object v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    iget-object v1, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    iget-object v1, v1, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    iput-object v1, v0, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    .line 309
    return-void
.end method

.method private showFatalErrorView(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorId"    # Ljava/lang/String;

    .prologue
    .line 290
    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->setResult(I)V

    .line 292
    iget-object v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    new-instance v1, Lcom/felicanetworks/mfs/view/FatalErrorBeforeAppInitView;

    invoke-direct {v1, p0, p1}, Lcom/felicanetworks/mfs/view/FatalErrorBeforeAppInitView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 293
    iget-object v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    iget-object v1, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    iget-object v1, v1, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v1, v0, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    .line 297
    return-void
.end method

.method private showMultiplexStartView()V
    .locals 2

    .prologue
    .line 269
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->defaultResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->setResult(ILandroid/content/Intent;)V

    .line 271
    iget-object v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    new-instance v1, Lcom/felicanetworks/mfs/view/MultiplexStartView;

    invoke-direct {v1, p0}, Lcom/felicanetworks/mfs/view/MultiplexStartView;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 272
    iget-object v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    iget-object v1, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    iget-object v1, v1, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v1, v0, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    .line 276
    return-void
.end method

.method private showResultView()V
    .locals 2

    .prologue
    .line 1573
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getAppStatus()Lcom/felicanetworks/mfs/AppStatus;

    move-result-object v0

    .line 1574
    .local v0, "st":Lcom/felicanetworks/mfs/AppStatus;
    iget-boolean v1, v0, Lcom/felicanetworks/mfs/AppStatus;->isNeedUiccInit:Z

    if-eqz v1, :cond_0

    .line 1578
    invoke-direct {p0, v0}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->nextViewOnFelicaUicc(Lcom/felicanetworks/mfs/AppStatus;)V

    .line 1588
    :goto_0
    return-void

    .line 1583
    :cond_0
    invoke-direct {p0, v0}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->nextViewOnFelica(Lcom/felicanetworks/mfs/AppStatus;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 1699
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1701
    :try_start_0
    new-instance v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/felicanetworks/mfs/MobileFeliCaSettings$1;-><init>(Lcom/felicanetworks/mfs/MobileFeliCaSettings;Landroid/os/Looper;)V

    .line 1718
    .local v0, "h":Landroid/os/Handler;
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1728
    .end local v0    # "h":Landroid/os/Handler;
    :goto_0
    return-void

    .line 1719
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getClassCode()I
    .locals 1

    .prologue
    .line 1732
    const/4 v0, 0x1

    return v0
.end method

.method protected getFatalErrorResultIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 1674
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1675
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.felicanetworks.mfs.result.felica"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1676
    iget-boolean v1, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_needUiccInit:Z

    if-eqz v1, :cond_0

    .line 1680
    const-string v1, "com.felicanetworks.mfs.result.uicc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1682
    :cond_0
    iget-boolean v1, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_needcheckbox:Z

    if-eqz v1, :cond_1

    .line 1686
    const-string v1, "com.felicanetworks.mfs.result.chkbx"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1691
    :cond_1
    return-object v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 1736
    const/16 v0, 0x20

    return v0
.end method

.method protected getResultIntent()Landroid/content/Intent;
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1595
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getAppStatus()Lcom/felicanetworks/mfs/AppStatus;

    move-result-object v1

    .line 1596
    .local v1, "st":Lcom/felicanetworks/mfs/AppStatus;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1597
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/felicanetworks/mfs/MobileFeliCaSettings$2;->$SwitchMap$com$felicanetworks$mfs$AppStatus$State:[I

    iget-object v3, v1, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    invoke-virtual {v3}, Lcom/felicanetworks/mfs/AppStatus$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1622
    const-string v2, "com.felicanetworks.mfs.result.felica"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1625
    :goto_0
    iget-boolean v2, v1, Lcom/felicanetworks/mfs/AppStatus;->isNeedUiccInit:Z

    if-eqz v2, :cond_0

    .line 1629
    sget-object v2, Lcom/felicanetworks/mfs/MobileFeliCaSettings$2;->$SwitchMap$com$felicanetworks$mfs$AppStatus$State:[I

    iget-object v3, v1, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    invoke-virtual {v3}, Lcom/felicanetworks/mfs/AppStatus$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 1654
    const-string v2, "com.felicanetworks.mfs.result.uicc"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1658
    :cond_0
    :goto_1
    iget-boolean v2, v1, Lcom/felicanetworks/mfs/AppStatus;->isNeedcheckbox:Z

    if-eqz v2, :cond_1

    .line 1662
    const-string v2, "com.felicanetworks.mfs.result.chkbx"

    iget v3, v1, Lcom/felicanetworks/mfs/AppStatus;->chk:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1667
    :cond_1
    return-object v0

    .line 1602
    :pswitch_0
    const-string v2, "com.felicanetworks.mfs.result.felica"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1608
    :pswitch_1
    const-string v2, "com.felicanetworks.mfs.result.felica"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1616
    :pswitch_2
    const-string v2, "com.felicanetworks.mfs.result.felica"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1634
    :pswitch_3
    const-string v2, "com.felicanetworks.mfs.result.uicc"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1640
    :pswitch_4
    const-string v2, "com.felicanetworks.mfs.result.uicc"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1648
    :pswitch_5
    const-string v2, "com.felicanetworks.mfs.result.uicc"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1597
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1629
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 842
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 844
    iget-boolean v2, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_isStartActivityForResult:Z

    if-nez v2, :cond_0

    .line 897
    :goto_0
    return-void

    .line 853
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_isStartActivityForResult:Z

    .line 855
    packed-switch p1, :pswitch_data_0

    .line 885
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown requestCode, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    :catch_0
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v2, v2, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 892
    .local v1, "errorId":Ljava/lang/String;
    invoke-static {v1}, Lcom/felicanetworks/cmnview/TransferState;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0

    .line 860
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errorId":Ljava/lang/String;
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    .line 877
    :try_start_1
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getAppStatus()Lcom/felicanetworks/mfs/AppStatus;

    move-result-object v2

    sget-object v3, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_FAILED:Lcom/felicanetworks/mfs/AppStatus$State;

    iput-object v3, v2, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 879
    :goto_1
    const/16 v2, 0x1b

    invoke-static {v2}, Lcom/felicanetworks/cmnview/TransferState;->transferState(I)V

    goto :goto_0

    .line 865
    :pswitch_1
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getAppStatus()Lcom/felicanetworks/mfs/AppStatus;

    move-result-object v2

    sget-object v3, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_CANCEL:Lcom/felicanetworks/mfs/AppStatus$State;

    iput-object v3, v2, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    goto :goto_1

    .line 871
    :pswitch_2
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getAppStatus()Lcom/felicanetworks/mfs/AppStatus;

    move-result-object v2

    sget-object v3, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_SUCCESS:Lcom/felicanetworks/mfs/AppStatus$State;

    iput-object v3, v2, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 855
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch

    .line 860
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 476
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 479
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_isAlive:Z

    .line 482
    sget v6, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_myInstanceCnt:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_myInstanceCnt:I

    .line 485
    const v6, 0x7f05000d

    invoke-virtual {p0, v6}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->setTitle(I)V

    .line 488
    invoke-direct {p0}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->setBackScreenView()V

    .line 491
    invoke-virtual {p0}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 492
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "com.felicanetworks.mfs.param"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_0

    move v4, v5

    :cond_0
    iput-boolean v4, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_needUiccInit:Z

    .line 493
    const-string v4, "com.felicanetworks.mfs.mfmchkbxflg"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_needcheckbox:Z

    .line 496
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iput-object v4, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->defaultResultIntent:Landroid/content/Intent;

    .line 497
    iget-object v4, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->defaultResultIntent:Landroid/content/Intent;

    const-string v6, "com.felicanetworks.mfs.result.felica"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 498
    iget-boolean v4, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_needUiccInit:Z

    if-eqz v4, :cond_1

    .line 502
    iget-object v4, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->defaultResultIntent:Landroid/content/Intent;

    const-string v6, "com.felicanetworks.mfs.result.uicc"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    :cond_1
    iget-boolean v4, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_needcheckbox:Z

    if-eqz v4, :cond_2

    .line 508
    iget-object v4, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->defaultResultIntent:Landroid/content/Intent;

    const-string v6, "com.felicanetworks.mfs.result.chkbx"

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 510
    :cond_2
    const/4 v4, 0x0

    iget-object v6, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->defaultResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v4, v6}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->setResult(ILandroid/content/Intent;)V

    .line 512
    invoke-virtual {p0}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->isTaskRoot()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 517
    const/16 v4, 0x66

    iget-object v5, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->defaultResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v4, v5}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->setResult(ILandroid/content/Intent;)V

    .line 518
    invoke-virtual {p0}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->finish()V

    .line 626
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_0
    return-void

    .line 523
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_4
    sget v4, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_myInstanceCnt:I

    if-ge v5, v4, :cond_5

    .line 528
    invoke-direct {p0}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->showMultiplexStartView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 532
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 540
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->getErrIdentifierCode(Landroid/content/Context;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->showFatalErrorView(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_5
    :try_start_1
    new-instance v4, Lcom/felicanetworks/mfslib/MfsAppContext;

    invoke-direct {v4}, Lcom/felicanetworks/mfslib/MfsAppContext;-><init>()V

    iput-object v4, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    .line 554
    iget-object v4, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    invoke-virtual {p0}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, v4, Lcom/felicanetworks/mfslib/MfsAppContext;->androidContext:Landroid/content/Context;

    .line 557
    iget-object v4, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iput-object p0, v4, Lcom/felicanetworks/mfslib/MfsAppContext;->activeActivity:Landroid/app/Activity;

    .line 560
    iget-object v4, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    new-instance v5, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;

    iget-object v6, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    invoke-direct {v5, v6}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;-><init>(Lcom/felicanetworks/mfslib/MfsAppContext;)V

    iput-object v5, v4, Lcom/felicanetworks/mfslib/MfsAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    .line 563
    iget-object v4, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v4, v4, Lcom/felicanetworks/mfslib/MfsAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    invoke-virtual {v4}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->loadSg()V

    .line 566
    iget-object v4, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    new-instance v5, Lcom/felicanetworks/mfslib/log/MfsLogMgr;

    iget-object v6, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    invoke-direct {v5, v6}, Lcom/felicanetworks/mfslib/log/MfsLogMgr;-><init>(Lcom/felicanetworks/mfslib/MfsAppContext;)V

    iput-object v5, v4, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    .line 567
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v4

    iget-object v5, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v5, v5, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    iput-object v5, v4, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    .line 570
    iget-object v4, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v5, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v5, v5, Lcom/felicanetworks/mfslib/MfsAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    invoke-virtual {v5}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/felicanetworks/cmnctrl/net/NetworkUtil;->setUserAgent(Lcom/felicanetworks/cmnlib/AppContext;Ljava/lang/String;)V

    .line 573
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v4

    iget-object v5, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iput-object v5, v4, Lcom/felicanetworks/cmnview/AppData;->appContext:Lcom/felicanetworks/cmnlib/AppContext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 593
    :try_start_2
    invoke-static {}, Lcom/felicanetworks/cmnview/TransferState;->refreshHandler()V

    .line 596
    new-instance v4, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;

    invoke-direct {v4, p0}, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;-><init>(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)V

    invoke-static {v4}, Lcom/felicanetworks/cmnview/TransferState;->setTransferStateListener(Lcom/felicanetworks/cmnview/TransferStateListener;)V

    .line 598
    invoke-direct {p0}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->checkLastAppStatus()Z

    move-result v4

    if-nez v4, :cond_3

    .line 604
    new-instance v0, Lcom/felicanetworks/mfs/AppStatus;

    invoke-direct {v0}, Lcom/felicanetworks/mfs/AppStatus;-><init>()V

    .line 605
    .local v0, "appStatus":Lcom/felicanetworks/mfs/AppStatus;
    iget-boolean v4, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_needUiccInit:Z

    iput-boolean v4, v0, Lcom/felicanetworks/mfs/AppStatus;->isNeedUiccInit:Z

    .line 606
    iget-boolean v4, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_needcheckbox:Z

    iput-boolean v4, v0, Lcom/felicanetworks/mfs/AppStatus;->isNeedcheckbox:Z

    .line 607
    invoke-static {v0}, Lcom/felicanetworks/mfs/MfsAppData;->setAppStatus(Lcom/felicanetworks/mfs/AppStatus;)V

    .line 610
    invoke-static {}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->getInstance()Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    move-result-object v4

    iput-object v4, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_cflInst:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    .line 613
    iget-object v4, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_cflInst:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    iget-object v5, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    new-instance v6, Lcom/felicanetworks/mfs/MobileFeliCaSettings$InitAppImpl;

    invoke-direct {v6, p0}, Lcom/felicanetworks/mfs/MobileFeliCaSettings$InitAppImpl;-><init>(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)V

    invoke-virtual {v4, v5, v6}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->initializeApplication(Lcom/felicanetworks/mfslib/MfsAppContext;Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 615
    .end local v0    # "appStatus":Lcom/felicanetworks/mfs/AppStatus;
    :catch_1
    move-exception v1

    .line 620
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v4, v4, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v5, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v4, v5, p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    .line 621
    .local v2, "errorId":Ljava/lang/String;
    invoke-static {v2}, Lcom/felicanetworks/cmnview/TransferState;->transferFatalError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 575
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "errorId":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 583
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->getErrIdentifierCode(Landroid/content/Context;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->showFatalErrorView(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 808
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 811
    invoke-direct {p0}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->destroyProc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :goto_0
    return-void

    .line 813
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 757
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 759
    invoke-virtual {p0}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    invoke-direct {p0}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->destroyProc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 766
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 679
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 680
    iget-object v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    iget-object v0, v0, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    instance-of v0, v0, Lcom/felicanetworks/cmnview/BaseDialogView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    iget-object v0, v0, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    iget-object v0, v0, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    invoke-virtual {v0}, Lcom/felicanetworks/cmnview/BaseDialogView;->refreshView()V

    .line 686
    :cond_0
    iget-boolean v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_isStartActivityForResult:Z

    if-eqz v0, :cond_1

    .line 691
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_isStartActivityForResult:Z

    .line 692
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getAppStatus()Lcom/felicanetworks/mfs/AppStatus;

    move-result-object v0

    sget-object v1, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_FAILED:Lcom/felicanetworks/mfs/AppStatus$State;

    iput-object v1, v0, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 693
    const/16 v0, 0x1b

    invoke-static {v0}, Lcom/felicanetworks/cmnview/TransferState;->transferState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :cond_1
    :goto_0
    return-void

    .line 696
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected startUiccActivity()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/sg/SgMgrException;
        }
    .end annotation

    .prologue
    .line 1437
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1438
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v5, v5, Lcom/felicanetworks/mfslib/MfsAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const v6, 0x100001f

    invoke-virtual {v5, v6}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1439
    .local v3, "logOut":I
    const-string v5, "com.felicanetworks.mfs.addon.uicc.d.LOGCAT_ENABLE"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1440
    iget-object v5, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v5, v5, Lcom/felicanetworks/mfslib/MfsAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    check-cast v5, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;

    invoke-virtual {v5}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->getUiccAddonStartPkgName()Ljava/lang/String;

    move-result-object v4

    .line 1441
    .local v4, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v5, v5, Lcom/felicanetworks/mfslib/MfsAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    check-cast v5, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;

    invoke-virtual {v5}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->getUiccAddonStartActName()Ljava/lang/String;

    move-result-object v0

    .line 1442
    .local v0, "cls":Ljava/lang/String;
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1444
    const/16 v5, 0x3e8

    :try_start_0
    invoke-virtual {p0, v2, v5}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1445
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_isStartActivityForResult:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1458
    :goto_0
    return-void

    .line 1447
    :catch_0
    move-exception v1

    .line 1451
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v5, v5, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v6, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v5, v6, p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    .line 1452
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getAppStatus()Lcom/felicanetworks/mfs/AppStatus;

    move-result-object v5

    sget-object v6, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_FAILED:Lcom/felicanetworks/mfs/AppStatus$State;

    iput-object v6, v5, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 1453
    const/16 v5, 0x1b

    invoke-static {v5}, Lcom/felicanetworks/cmnview/TransferState;->transferState(I)V

    goto :goto_0
.end method

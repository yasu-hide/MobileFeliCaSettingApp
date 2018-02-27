.class public Lcom/felicanetworks/mfc/FelicaException;
.super Ljava/lang/Exception;
.source "FelicaException.java"


# static fields
.field public static final ID_GET_APP_IDENTIFICATION_CODE_ERROR:I = 0x19

.field public static final ID_GET_BLOCK_COUNT_INFORMATION_ERROR:I = 0xd

.field public static final ID_GET_CONTAINER_ID_ERROR:I = 0x14

.field public static final ID_GET_KEY_VERSION_ERROR:I = 0x4

.field public static final ID_GET_NODE_INFORMATION_ERROR:I = 0x9

.field public static final ID_GET_PRIVACY_NODE_INFORMATION_ERROR:I = 0xa

.field public static final ID_GET_PUSH_NOTIFICATION_LISTENER_ERROR:I = 0x18

.field public static final ID_GET_RFS_STATE_ERROR:I = 0x11

.field public static final ID_GET_SYSTEM_CODE_LIST_ERROR:I = 0x1a

.field public static final ID_ILLEGAL_STATE_ERROR:I = 0x2

.field public static final ID_IO_ERROR:I = 0x3

.field public static final ID_OPEN_ERROR:I = 0x8

.field public static final ID_PERMISSION_ERROR:I = 0xc

.field public static final ID_PUSH_ERROR:I = 0x15

.field public static final ID_READ_ERROR:I = 0x5

.field public static final ID_SET_NODECODESIZE_ERROR:I = 0x7

.field public static final ID_SET_PRIVACY_ERROR:I = 0xb

.field public static final ID_SET_PUSH_NOTIFICATION_LISTENER_ERROR:I = 0x16

.field public static final ID_START_ADHOC_ERROR:I = 0x17

.field public static final ID_UNKNOWN_ERROR:I = 0x1

.field public static final ID_WRITE_ERROR:I = 0x6

.field public static final TYPE_ACTIVATE_FAILED:I = 0x38

.field public static final TYPE_ACTIVATING_BY_OTHER_APP:I = 0x30

.field public static final TYPE_ALREADY_ACTIVATED:I = 0x2a

.field public static final TYPE_AUTHENTICATE_FAILED:I = 0x1e

.field public static final TYPE_BLOCK_NOT_FOUND:I = 0xc

.field public static final TYPE_CASH_BACK_FAILED:I = 0x10

.field public static final TYPE_CHECK_PIN_LIMIT:I = 0x12

.field public static final TYPE_CHECK_PIN_OVERRUN:I = 0x13

.field public static final TYPE_COMMUNICATION_START_FAILED:I = 0x1b

.field public static final TYPE_CURRENTLY_ACTIVATING:I = 0x31

.field public static final TYPE_CURRENTLY_ONLINE:I = 0x2

.field public static final TYPE_DEVICELIST_NOT_SET:I = 0x19

.field public static final TYPE_ENABLE_PIN_FAILED:I = 0x15

.field public static final TYPE_FELICA_NOT_AVAILABLE:I = 0x37

.field public static final TYPE_FELICA_NOT_SET:I = 0x18

.field public static final TYPE_GET_BLOCK_COUNT_INFORMATION_FAILED:I = 0x2b

.field public static final TYPE_GET_CONTAINER_ID_FAILED:I = 0x2e

.field public static final TYPE_GET_CONTAINER_ISSUE_INFORMATION_FAILED:I = 0x1d

.field public static final TYPE_GET_KEY_VERSION_FAILED:I = 0xa

.field public static final TYPE_GET_NODE_INFORMATION_FAILED:I = 0x22

.field public static final TYPE_GET_PRIVACY_NODE_INFORMATION_FAILED:I = 0x23

.field public static final TYPE_GET_RFS_STATE_FAILED:I = 0x33

.field public static final TYPE_GET_SYSTEM_CODE_LIST_FAILED:I = 0x2d

.field public static final TYPE_ILLEGAL_METHOD_CALL:I = 0x26

.field public static final TYPE_ILLEGAL_NODECODE:I = 0x20

.field public static final TYPE_ILLEGAL_PACKET_INDEX:I = 0x21

.field public static final TYPE_ILLEGAL_SYSTEMCODE:I = 0x32

.field public static final TYPE_INVALID_PIN:I = 0x11

.field public static final TYPE_INVALID_RESPONSE:I = 0x6

.field public static final TYPE_INVALID_SELECTED_INTERFACE:I = 0x36

.field public static final TYPE_LISTENER_NOT_SET:I = 0x1a

.field public static final TYPE_NOT_ACTIVATED:I = 0x5

.field public static final TYPE_NOT_CLOSED:I = 0x25

.field public static final TYPE_NOT_IC_CHIP_FORMATTING:I = 0x1f

.field public static final TYPE_NOT_OPENED:I = 0x1

.field public static final TYPE_NOT_SELECTED:I = 0x3

.field public static final TYPE_OPEN_FAILED:I = 0x8

.field public static final TYPE_PIN_NOT_CHECKED:I = 0xd

.field public static final TYPE_PURSE_FAILED:I = 0xf

.field public static final TYPE_PUSH_FAILED:I = 0x28

.field public static final TYPE_READ_FAILED:I = 0xe

.field public static final TYPE_REMOTE_ACCESS_FAILED:I = 0x2f

.field public static final TYPE_RESET_FAILED:I = 0x2c

.field public static final TYPE_SELECT_FAILED:I = 0x9

.field public static final TYPE_SERVICE_NOT_FOUND:I = 0xb

.field public static final TYPE_SET_NODECODESIZE_FAILED:I = 0x1c

.field public static final TYPE_SET_PRIVACY_FAILED:I = 0x24

.field public static final TYPE_START_ADHOC_FAILED:I = 0x35

.field public static final TYPE_TIMEOUT_OCCURRED:I = 0x7

.field public static final TYPE_USED_BY_OTHER_APP:I = 0x27

.field public static final TYPE_WRITE_FAILED:I = 0x14


# instance fields
.field private id:I

.field protected otherAppInfo:Lcom/felicanetworks/mfc/AppInfo;

.field private statusFlag1:I

.field private statusFlag2:I

.field private type:I


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 432
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 434
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 435
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 436
    return-void
.end method

.method constructor <init>(II)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 445
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 446
    const-string v0, "%s id=%d type=%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 448
    iput p1, p0, Lcom/felicanetworks/mfc/FelicaException;->id:I

    .line 449
    iput p2, p0, Lcom/felicanetworks/mfc/FelicaException;->type:I

    .line 451
    const-string v0, "%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 452
    return-void
.end method

.method constructor <init>(IIII)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "statusFlag1"    # I
    .param p4, "statusFlag2"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 463
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 464
    const-string v0, "%s id=%d type=%d statusFlag1=%d statusFlag2=%d"

    new-array v1, v4, [Ljava/lang/Object;

    .line 465
    const-string v2, "000"

    aput-object v2, v1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 464
    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 467
    iput p1, p0, Lcom/felicanetworks/mfc/FelicaException;->id:I

    .line 468
    iput p2, p0, Lcom/felicanetworks/mfc/FelicaException;->type:I

    .line 469
    iput p3, p0, Lcom/felicanetworks/mfc/FelicaException;->statusFlag1:I

    .line 470
    iput p4, p0, Lcom/felicanetworks/mfc/FelicaException;->statusFlag2:I

    .line 472
    const-string v0, "%s"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v5

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 473
    return-void
.end method

.method constructor <init>(IILcom/felicanetworks/mfc/AppInfo;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "otherAppInfo"    # Lcom/felicanetworks/mfc/AppInfo;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 483
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 484
    const-string v0, "%s id=%d type=%d otherAppPID=%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 485
    const-string v2, "000"

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    .line 484
    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 487
    iput p1, p0, Lcom/felicanetworks/mfc/FelicaException;->id:I

    .line 488
    iput p2, p0, Lcom/felicanetworks/mfc/FelicaException;->type:I

    .line 489
    iput-object p3, p0, Lcom/felicanetworks/mfc/FelicaException;->otherAppInfo:Lcom/felicanetworks/mfc/AppInfo;

    .line 491
    const-string v0, "%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 492
    return-void
.end method

.method constructor <init>(IILcom/felicanetworks/mfc/AppInfo;II)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "otherAppInfo"    # Lcom/felicanetworks/mfc/AppInfo;
    .param p4, "statusFlag1"    # I
    .param p5, "statusFlag2"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 504
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 505
    const-string v0, "%s id=%d type=%d otherAppPID=%d statusFlag1=%d statusFlag2=%d"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 506
    const-string v2, "000"

    aput-object v2, v1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 505
    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 508
    iput p1, p0, Lcom/felicanetworks/mfc/FelicaException;->id:I

    .line 509
    iput p2, p0, Lcom/felicanetworks/mfc/FelicaException;->type:I

    .line 510
    iput-object p3, p0, Lcom/felicanetworks/mfc/FelicaException;->otherAppInfo:Lcom/felicanetworks/mfc/AppInfo;

    .line 511
    iput p4, p0, Lcom/felicanetworks/mfc/FelicaException;->statusFlag1:I

    .line 512
    iput p5, p0, Lcom/felicanetworks/mfc/FelicaException;->statusFlag2:I

    .line 514
    const-string v0, "%s"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v5

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 515
    return-void
.end method


# virtual methods
.method public getID()I
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 524
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 525
    const-string v0, "%s id=%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    iget v2, p0, Lcom/felicanetworks/mfc/FelicaException;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 527
    iget v0, p0, Lcom/felicanetworks/mfc/FelicaException;->id:I

    return v0
.end method

.method public getOtherAppInfo()Lcom/felicanetworks/mfc/AppInfo;
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 578
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 579
    const-string v0, "%s otherAppInfo=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/felicanetworks/mfc/FelicaException;->otherAppInfo:Lcom/felicanetworks/mfc/AppInfo;

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 581
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaException;->otherAppInfo:Lcom/felicanetworks/mfc/AppInfo;

    return-object v0
.end method

.method public getStatusFlag1()I
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 550
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 551
    const-string v0, "%s statusFlag1=%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    iget v2, p0, Lcom/felicanetworks/mfc/FelicaException;->statusFlag1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 553
    iget v0, p0, Lcom/felicanetworks/mfc/FelicaException;->statusFlag1:I

    return v0
.end method

.method public getStatusFlag2()I
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 563
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 564
    const-string v0, "%s statusFlag2=%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    iget v2, p0, Lcom/felicanetworks/mfc/FelicaException;->statusFlag2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 566
    iget v0, p0, Lcom/felicanetworks/mfc/FelicaException;->statusFlag2:I

    return v0
.end method

.method public getType()I
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 537
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 538
    const-string v0, "%s type=%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    iget v2, p0, Lcom/felicanetworks/mfc/FelicaException;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 540
    iget v0, p0, Lcom/felicanetworks/mfc/FelicaException;->type:I

    return v0
.end method

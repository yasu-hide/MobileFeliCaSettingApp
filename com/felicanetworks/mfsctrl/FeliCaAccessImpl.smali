.class public Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;
.super Ljava/lang/Object;
.source "FeliCaAccessImpl.java"

# interfaces
.implements Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# static fields
.field public static final DATA_NONE:I = 0x0

.field public static final RESULT_FAILED_FELICATIMEOUT:I = 0x6

.field public static final RESULT_FAILED_INUSE:I = 0x2

.field public static final RESULT_FAILED_LOCK:I = 0x3

.field public static final RESULT_FAILED_MFCOTHER:I = 0x7

.field public static final RESULT_FAILED_MFCPERMINSPECT:I = 0x5

.field public static final RESULT_FAILED_OTHER:I = 0x4

.field public static final RESULT_NONE:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1


# instance fields
.field private _errorId:Ljava/lang/String;

.field private _felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

.field private _pauseFlg:Z

.field private _pid:I

.field private _result:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->_pauseFlg:Z

    .line 23
    iput v1, p0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->_result:I

    .line 24
    iput v1, p0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->_pid:I

    .line 25
    iput-object v2, p0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->_errorId:Ljava/lang/String;

    .line 26
    iput-object v2, p0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->_felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    return-void
.end method


# virtual methods
.method public errorResult(ILjava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    .locals 1
    .param p1, "errorType"    # I
    .param p2, "errorIdentifierCode"    # Ljava/lang/String;
    .param p3, "pId"    # I
    .param p4, "felicaErrInfo"    # Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .prologue
    .line 196
    iput-object p2, p0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->_errorId:Ljava/lang/String;

    .line 197
    iput-object p4, p0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->_felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .line 200
    packed-switch p1, :pswitch_data_0

    .line 243
    :pswitch_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->_result:I

    .line 247
    :goto_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->restart()V

    .line 251
    return-void

    .line 206
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->_result:I

    .line 207
    iput p3, p0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->_pid:I

    goto :goto_0

    .line 214
    :pswitch_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->_result:I

    goto :goto_0

    .line 221
    :pswitch_3
    const/4 v0, 0x5

    iput v0, p0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->_result:I

    goto :goto_0

    .line 228
    :pswitch_4
    const/4 v0, 0x6

    iput v0, p0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->_result:I

    goto :goto_0

    .line 235
    :pswitch_5
    const/4 v0, 0x7

    iput v0, p0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->_result:I

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public finishResult()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    iput v0, p0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->_result:I

    .line 130
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->restart()V

    .line 134
    return-void
.end method

.method public getClassCode()I
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x3

    return v0
.end method

.method public getErrorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->_errorId:Ljava/lang/String;

    return-object v0
.end method

.method public getFelicaErrInfo()Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->_felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    return-object v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 491
    const/16 v0, 0x21

    return v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->_pid:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->_result:I

    return v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 292
    monitor-enter p0

    .line 293
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->_pauseFlg:Z

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    return-void
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 331
    monitor-enter p0

    .line 332
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->_pauseFlg:Z

    .line 333
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 334
    monitor-exit p0

    .line 338
    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

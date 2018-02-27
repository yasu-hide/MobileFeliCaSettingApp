.class public Lcom/felicanetworks/cmnview/TransferState;
.super Ljava/lang/Object;
.source "TransferState.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/cmnview/TransferState$1;,
        Lcom/felicanetworks/cmnview/TransferState$TransferStateHandler;
    }
.end annotation


# static fields
.field private static _handler:Lcom/felicanetworks/cmnview/TransferState$TransferStateHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/felicanetworks/cmnview/TransferState$TransferStateHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/felicanetworks/cmnview/TransferState$TransferStateHandler;-><init>(Lcom/felicanetworks/cmnview/TransferState$1;)V

    sput-object v0, Lcom/felicanetworks/cmnview/TransferState;->_handler:Lcom/felicanetworks/cmnview/TransferState$TransferStateHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static refreshHandler()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    sget-object v0, Lcom/felicanetworks/cmnview/TransferState;->_handler:Lcom/felicanetworks/cmnview/TransferState$TransferStateHandler;

    iput-object v1, v0, Lcom/felicanetworks/cmnview/TransferState$TransferStateHandler;->_listener:Lcom/felicanetworks/cmnview/TransferStateListener;

    .line 54
    new-instance v0, Lcom/felicanetworks/cmnview/TransferState$TransferStateHandler;

    invoke-direct {v0, v1}, Lcom/felicanetworks/cmnview/TransferState$TransferStateHandler;-><init>(Lcom/felicanetworks/cmnview/TransferState$1;)V

    sput-object v0, Lcom/felicanetworks/cmnview/TransferState;->_handler:Lcom/felicanetworks/cmnview/TransferState$TransferStateHandler;

    .line 58
    return-void
.end method

.method public static setTransferStateListener(Lcom/felicanetworks/cmnview/TransferStateListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/felicanetworks/cmnview/TransferStateListener;

    .prologue
    .line 76
    sget-object v0, Lcom/felicanetworks/cmnview/TransferState;->_handler:Lcom/felicanetworks/cmnview/TransferState$TransferStateHandler;

    iput-object p0, v0, Lcom/felicanetworks/cmnview/TransferState$TransferStateHandler;->_listener:Lcom/felicanetworks/cmnview/TransferStateListener;

    .line 80
    return-void
.end method

.method public static transferFatalError(Ljava/lang/String;)V
    .locals 1
    .param p0, "errorId"    # Ljava/lang/String;

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/felicanetworks/cmnview/TransferState;->transferFatalError(Ljava/lang/String;Lcom/felicanetworks/cmnview/TransferSenderInfo;)V

    .line 204
    return-void
.end method

.method public static transferFatalError(Ljava/lang/String;Lcom/felicanetworks/cmnview/TransferSenderInfo;)V
    .locals 2
    .param p0, "errorId"    # Ljava/lang/String;
    .param p1, "senderInfo"    # Lcom/felicanetworks/cmnview/TransferSenderInfo;

    .prologue
    .line 132
    new-instance v0, Lcom/felicanetworks/cmnview/TransferStateData;

    invoke-direct {v0}, Lcom/felicanetworks/cmnview/TransferStateData;-><init>()V

    .line 133
    .local v0, "data":Lcom/felicanetworks/cmnview/TransferStateData;
    iput-object p0, v0, Lcom/felicanetworks/cmnview/TransferStateData;->errorId:Ljava/lang/String;

    .line 134
    const/16 v1, 0x3e7

    invoke-static {v1, v0, p1}, Lcom/felicanetworks/cmnview/TransferState;->transferState(ILcom/felicanetworks/cmnview/TransferStateData;Lcom/felicanetworks/cmnview/TransferSenderInfo;)V

    .line 138
    return-void
.end method

.method public static transferState(I)V
    .locals 1
    .param p0, "cmdId"    # I

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-static {p0, v0, v0}, Lcom/felicanetworks/cmnview/TransferState;->transferState(ILcom/felicanetworks/cmnview/TransferStateData;Lcom/felicanetworks/cmnview/TransferSenderInfo;)V

    .line 160
    return-void
.end method

.method public static transferState(ILcom/felicanetworks/cmnview/TransferStateData;)V
    .locals 1
    .param p0, "cmdId"    # I
    .param p1, "data"    # Lcom/felicanetworks/cmnview/TransferStateData;

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/felicanetworks/cmnview/TransferState;->transferState(ILcom/felicanetworks/cmnview/TransferStateData;Lcom/felicanetworks/cmnview/TransferSenderInfo;)V

    .line 187
    return-void
.end method

.method public static transferState(ILcom/felicanetworks/cmnview/TransferStateData;Lcom/felicanetworks/cmnview/TransferSenderInfo;)V
    .locals 3
    .param p0, "cmdId"    # I
    .param p1, "data"    # Lcom/felicanetworks/cmnview/TransferStateData;
    .param p2, "senderInfo"    # Lcom/felicanetworks/cmnview/TransferSenderInfo;

    .prologue
    .line 109
    sget-object v0, Lcom/felicanetworks/cmnview/TransferState;->_handler:Lcom/felicanetworks/cmnview/TransferState$TransferStateHandler;

    sget-object v1, Lcom/felicanetworks/cmnview/TransferState;->_handler:Lcom/felicanetworks/cmnview/TransferState$TransferStateHandler;

    new-instance v2, Lcom/felicanetworks/cmnview/TransferData;

    invoke-direct {v2, p1, p2}, Lcom/felicanetworks/cmnview/TransferData;-><init>(Lcom/felicanetworks/cmnview/TransferStateData;Lcom/felicanetworks/cmnview/TransferSenderInfo;)V

    invoke-virtual {v1, p0, v2}, Lcom/felicanetworks/cmnview/TransferState$TransferStateHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/cmnview/TransferState$TransferStateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 113
    return-void
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

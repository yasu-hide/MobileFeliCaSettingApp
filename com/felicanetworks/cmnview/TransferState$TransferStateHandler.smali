.class Lcom/felicanetworks/cmnview/TransferState$TransferStateHandler;
.super Landroid/os/Handler;
.source "TransferState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/cmnview/TransferState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransferStateHandler"
.end annotation


# instance fields
.field public _listener:Lcom/felicanetworks/cmnview/TransferStateListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/cmnview/TransferState$TransferStateHandler;->_listener:Lcom/felicanetworks/cmnview/TransferStateListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/felicanetworks/cmnview/TransferState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/felicanetworks/cmnview/TransferState$1;

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/felicanetworks/cmnview/TransferState$TransferStateHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 230
    iget v0, p1, Landroid/os/Message;->what:I

    .line 231
    .local v0, "cmdId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 232
    .local v2, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 234
    .local v1, "data":Lcom/felicanetworks/cmnview/TransferStateData;
    const/4 v3, 0x0

    .line 235
    .local v3, "senderInfo":Lcom/felicanetworks/cmnview/TransferSenderInfo;
    if-eqz v2, :cond_0

    instance-of v4, v2, Lcom/felicanetworks/cmnview/TransferData;

    if-eqz v4, :cond_0

    move-object v4, v2

    .line 239
    check-cast v4, Lcom/felicanetworks/cmnview/TransferData;

    iget-object v1, v4, Lcom/felicanetworks/cmnview/TransferData;->data:Lcom/felicanetworks/cmnview/TransferStateData;

    .line 240
    check-cast v2, Lcom/felicanetworks/cmnview/TransferData;

    .end local v2    # "o":Ljava/lang/Object;
    iget-object v3, v2, Lcom/felicanetworks/cmnview/TransferData;->senderInfo:Lcom/felicanetworks/cmnview/TransferSenderInfo;

    .line 243
    :cond_0
    iget-object v4, p0, Lcom/felicanetworks/cmnview/TransferState$TransferStateHandler;->_listener:Lcom/felicanetworks/cmnview/TransferStateListener;

    if-eqz v4, :cond_1

    .line 247
    iget-object v4, p0, Lcom/felicanetworks/cmnview/TransferState$TransferStateHandler;->_listener:Lcom/felicanetworks/cmnview/TransferStateListener;

    invoke-interface {v4, v0, v1, v3}, Lcom/felicanetworks/cmnview/TransferStateListener;->transferState(ILcom/felicanetworks/cmnview/TransferStateData;Lcom/felicanetworks/cmnview/TransferSenderInfo;)V

    .line 252
    :cond_1
    return-void
.end method

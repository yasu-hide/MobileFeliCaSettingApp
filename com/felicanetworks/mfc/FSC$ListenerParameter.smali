.class Lcom/felicanetworks/mfc/FSC$ListenerParameter;
.super Ljava/lang/Object;
.source "FSC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/FSC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListenerParameter"
.end annotation


# instance fields
.field msg:Ljava/lang/String;

.field final synthetic this$0:Lcom/felicanetworks/mfc/FSC;

.field type:I


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfc/FSC;ILjava/lang/String;)V
    .locals 6
    .param p2, "type"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 618
    iput-object p1, p0, Lcom/felicanetworks/mfc/FSC$ListenerParameter;->this$0:Lcom/felicanetworks/mfc/FSC;

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    const/4 v0, 0x6

    const-string v1, "%s %d msg:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "000 mfc/FSC$ListenerParameter"

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 615
    iput p2, p0, Lcom/felicanetworks/mfc/FSC$ListenerParameter;->type:I

    .line 616
    iput-object p3, p0, Lcom/felicanetworks/mfc/FSC$ListenerParameter;->msg:Ljava/lang/String;

    .line 617
    const/4 v0, 0x7

    const-string v1, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "999 mfc/FSC$ListenerParameter"

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 632
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 getMsg"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 633
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 getMsg"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 634
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSC$ListenerParameter;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 623
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 getType"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 624
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 getType"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 625
    iget v0, p0, Lcom/felicanetworks/mfc/FSC$ListenerParameter;->type:I

    return v0
.end method

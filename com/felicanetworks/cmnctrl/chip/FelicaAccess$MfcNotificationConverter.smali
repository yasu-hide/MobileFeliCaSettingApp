.class public Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;
.super Ljava/lang/Object;
.source "FelicaAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MfcNotificationConverter"
.end annotation


# instance fields
.field public category:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

.field public msgResult:Ljava/lang/String;

.field public notificationResult:I

.field public pid:I

.field final synthetic this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

.field public type:I


# direct methods
.method constructor <init>(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;ILjava/lang/String;Lcom/felicanetworks/mfc/AppInfo;)V
    .locals 2
    .param p2, "id"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "otherAppInfo"    # Lcom/felicanetworks/mfc/AppInfo;

    .prologue
    const/4 v1, 0x0

    .line 140
    iput-object p1, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iput-object v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->category:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    .line 124
    const/4 v0, 0x2

    iput v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->notificationResult:I

    .line 126
    iput v1, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->pid:I

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->msgResult:Ljava/lang/String;

    .line 130
    iput v1, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->type:I

    .line 145
    iput-object p3, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->msgResult:Ljava/lang/String;

    .line 147
    invoke-virtual {p0, p2, p4}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->errNotificationToListenerParameter(ILcom/felicanetworks/mfc/AppInfo;)V

    .line 151
    return-void
.end method

.method constructor <init>(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;Ljava/lang/Exception;)V
    .locals 2
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v1, 0x0

    .line 159
    iput-object p1, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iput-object v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->category:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    .line 124
    const/4 v0, 0x2

    iput v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->notificationResult:I

    .line 126
    iput v1, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->pid:I

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->msgResult:Ljava/lang/String;

    .line 130
    iput v1, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->type:I

    .line 163
    instance-of v0, p2, Lcom/felicanetworks/mfc/FelicaException;

    if-eqz v0, :cond_0

    .line 168
    check-cast p2, Lcom/felicanetworks/mfc/FelicaException;

    .end local p2    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, p2}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->feToListenerParameter(Lcom/felicanetworks/mfc/FelicaException;)V

    .line 173
    :cond_0
    return-void
.end method


# virtual methods
.method protected errNotificationToListenerParameter(ILcom/felicanetworks/mfc/AppInfo;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "otherAppInfo"    # Lcom/felicanetworks/mfc/AppInfo;

    .prologue
    .line 186
    packed-switch p1, :pswitch_data_0

    .line 209
    :pswitch_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->notificationResult:I

    .line 210
    iput p1, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->type:I

    .line 216
    :goto_0
    return-void

    .line 192
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->notificationResult:I

    .line 193
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iput-object v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->category:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    .line 194
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/AppInfo;->getPid()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->pid:I

    goto :goto_0

    .line 201
    :pswitch_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->notificationResult:I

    .line 202
    iput p1, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->type:I

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected feToListenerParameter(Lcom/felicanetworks/mfc/FelicaException;)V
    .locals 1
    .param p1, "e"    # Lcom/felicanetworks/mfc/FelicaException;

    .prologue
    .line 228
    invoke-virtual {p1}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 249
    const/4 v0, 0x5

    iput v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->notificationResult:I

    .line 255
    :goto_0
    return-void

    .line 234
    :sswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->notificationResult:I

    .line 235
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iput-object v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->category:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    goto :goto_0

    .line 242
    :sswitch_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->notificationResult:I

    goto :goto_0

    .line 228
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x37 -> :sswitch_0
    .end sparse-switch
.end method

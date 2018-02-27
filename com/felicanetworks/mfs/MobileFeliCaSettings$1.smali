.class Lcom/felicanetworks/mfs/MobileFeliCaSettings$1;
.super Landroid/os/Handler;
.source "MobileFeliCaSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/felicanetworks/mfs/MobileFeliCaSettings;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;


# direct methods
.method constructor <init>(Lcom/felicanetworks/mfs/MobileFeliCaSettings;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1701
    iput-object p1, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$1;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1707
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1709
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$1;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v0}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$600(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1716
    :goto_0
    return-void

    .line 1710
    :catch_0
    move-exception v0

    goto :goto_0
.end method

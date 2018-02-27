.class public Lcom/felicanetworks/mfc/Felica$LocalBinder;
.super Landroid/os/Binder;
.source "Felica.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/Felica;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfc/Felica;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfc/Felica;)V
    .locals 0

    .prologue
    .line 2967
    iput-object p1, p0, Lcom/felicanetworks/mfc/Felica$LocalBinder;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance()Lcom/felicanetworks/mfc/Felica;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2973
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 getInstance"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2974
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 getInstance"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2975
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica$LocalBinder;->this$0:Lcom/felicanetworks/mfc/Felica;

    return-object v0
.end method

.class public Lcom/felicanetworks/mfslib/launch/AppLauncher;
.super Ljava/lang/Object;
.source "AppLauncher.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# instance fields
.field private addInfo:Ljava/lang/String;

.field private context:Lcom/felicanetworks/mfslib/MfsAppContext;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfslib/MfsAppContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Lcom/felicanetworks/mfslib/MfsAppContext;
    .param p2, "addInfo"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/felicanetworks/mfslib/launch/AppLauncher;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    .line 46
    iput-object p2, p0, Lcom/felicanetworks/mfslib/launch/AppLauncher;->addInfo:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private getBrowserAppIntent()Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/sg/SgMgrException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "retIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/felicanetworks/mfslib/launch/AppLauncher;->addInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 131
    return-object v0
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 149
    const/16 v0, 0x18

    return v0
.end method

.method public startApplication()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfslib/launch/AppLauncherException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 67
    const/4 v0, 0x0

    .line 70
    .local v0, "baseIntent":Landroid/content/Intent;
    :try_start_0
    invoke-direct {p0}, Lcom/felicanetworks/mfslib/launch/AppLauncher;->getBrowserAppIntent()Landroid/content/Intent;
    :try_end_0
    .catch Lcom/felicanetworks/cmnlib/sg/SgMgrException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/felicanetworks/mfslib/launch/AppLauncherException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 74
    :try_start_1
    iget-object v2, p0, Lcom/felicanetworks/mfslib/launch/AppLauncher;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v2, v2, Lcom/felicanetworks/mfslib/MfsAppContext;->activeActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/felicanetworks/cmnlib/sg/SgMgrException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/felicanetworks/mfslib/launch/AppLauncherException; {:try_start_1 .. :try_end_1} :catch_2

    .line 104
    return-void

    .line 75
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Lcom/felicanetworks/mfslib/launch/AppLauncherException;

    const/4 v3, 0x0

    const-string v4, "Start failure"

    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfslib/launch/AppLauncherException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_2
    .catch Lcom/felicanetworks/cmnlib/sg/SgMgrException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/felicanetworks/mfslib/launch/AppLauncherException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 84
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 88
    .local v1, "e":Lcom/felicanetworks/cmnlib/sg/SgMgrException;
    new-instance v2, Lcom/felicanetworks/mfslib/launch/AppLauncherException;

    iget-object v3, p0, Lcom/felicanetworks/mfslib/launch/AppLauncher;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v3, v3, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v3, v4, p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v5}, Lcom/felicanetworks/mfslib/launch/AppLauncherException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    throw v2

    .line 89
    .end local v1    # "e":Lcom/felicanetworks/cmnlib/sg/SgMgrException;
    :catch_2
    move-exception v1

    .line 93
    .local v1, "e":Lcom/felicanetworks/mfslib/launch/AppLauncherException;
    iget-object v2, p0, Lcom/felicanetworks/mfslib/launch/AppLauncher;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v2, v2, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    .line 94
    throw v1

    .line 95
    .end local v1    # "e":Lcom/felicanetworks/mfslib/launch/AppLauncherException;
    :catch_3
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/felicanetworks/mfslib/launch/AppLauncherException;

    iget-object v3, p0, Lcom/felicanetworks/mfslib/launch/AppLauncher;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v3, v3, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v3, v4, p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v5}, Lcom/felicanetworks/mfslib/launch/AppLauncherException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    throw v2
.end method

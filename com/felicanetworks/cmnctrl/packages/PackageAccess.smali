.class public Lcom/felicanetworks/cmnctrl/packages/PackageAccess;
.super Ljava/lang/Object;
.source "PackageAccess.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# instance fields
.field protected context:Lcom/felicanetworks/cmnlib/AppContext;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/cmnlib/AppContext;)V
    .locals 0
    .param p1, "context"    # Lcom/felicanetworks/cmnlib/AppContext;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/felicanetworks/cmnctrl/packages/PackageAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    .line 40
    return-void
.end method


# virtual methods
.method public getAppVersionInfo()Lcom/felicanetworks/cmnctrl/data/VersionInformationData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnctrl/packages/PackageAccessException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 58
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/packages/PackageAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v2, v2, Lcom/felicanetworks/cmnlib/AppContext;->androidContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/felicanetworks/cmnctrl/packages/PackageAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v3, v3, Lcom/felicanetworks/cmnlib/AppContext;->androidContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 68
    new-instance v2, Lcom/felicanetworks/cmnctrl/data/VersionInformationData;

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/cmnctrl/data/VersionInformationData;-><init>(ILjava/lang/String;)V

    return-object v2

    .line 59
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/felicanetworks/cmnctrl/packages/PackageAccessException;

    iget-object v3, p0, Lcom/felicanetworks/cmnctrl/packages/PackageAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v3, v3, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v3, v4, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v0, v3, v4}, Lcom/felicanetworks/cmnctrl/packages/PackageAccessException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    throw v2
.end method

.method public getClassCode()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x2

    return v0
.end method

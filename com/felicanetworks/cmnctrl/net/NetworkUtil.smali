.class public final Lcom/felicanetworks/cmnctrl/net/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNetworkConnect(Lcom/felicanetworks/cmnlib/AppContext;)Z
    .locals 4
    .param p0, "context"    # Lcom/felicanetworks/cmnlib/AppContext;

    .prologue
    .line 106
    iget-object v2, p0, Lcom/felicanetworks/cmnlib/AppContext;->androidContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 108
    .local v0, "conn_manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 110
    .local v1, "network_info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    .line 119
    const/4 v2, 0x1

    .line 125
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setUserAgent(Lcom/felicanetworks/cmnlib/AppContext;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Lcom/felicanetworks/cmnlib/AppContext;
    .param p1, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x1e

    const/16 v8, 0x8

    .line 47
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 50
    .local v0, "adVersion":Ljava/lang/String;
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 52
    .local v4, "modelName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_0

    .line 56
    const/4 v6, 0x0

    const/16 v7, 0x1e

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 60
    :cond_0
    new-instance v5, Lcom/felicanetworks/cmnctrl/packages/PackageAccess;

    invoke-direct {v5, p0}, Lcom/felicanetworks/cmnctrl/packages/PackageAccess;-><init>(Lcom/felicanetworks/cmnlib/AppContext;)V

    .line 61
    .local v5, "pa":Lcom/felicanetworks/cmnctrl/packages/PackageAccess;
    invoke-virtual {v5}, Lcom/felicanetworks/cmnctrl/packages/PackageAccess;->getAppVersionInfo()Lcom/felicanetworks/cmnctrl/data/VersionInformationData;

    move-result-object v6

    iget-object v1, v6, Lcom/felicanetworks/cmnctrl/data/VersionInformationData;->versionName:Ljava/lang/String;

    .line 63
    .local v1, "appVersion":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_1

    .line 67
    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 70
    :cond_1
    iget-object v6, p0, Lcom/felicanetworks/cmnlib/AppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const v7, 0x100000c

    invoke-virtual {v6, v7}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 73
    .local v2, "chip":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (Android "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/felicanetworks/cmnlib/AppContext;->userAgent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    return-void

    .line 77
    .end local v0    # "adVersion":Ljava/lang/String;
    .end local v1    # "appVersion":Ljava/lang/String;
    .end local v2    # "chip":Ljava/lang/String;
    .end local v4    # "modelName":Ljava/lang/String;
    .end local v5    # "pa":Lcom/felicanetworks/cmnctrl/packages/PackageAccess;
    :catch_0
    move-exception v3

    .line 81
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;

    const-string v7, "User agent generation failure"

    invoke-direct {v6, v7, v3}, Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

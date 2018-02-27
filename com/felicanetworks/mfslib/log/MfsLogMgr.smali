.class public Lcom/felicanetworks/mfslib/log/MfsLogMgr;
.super Lcom/felicanetworks/cmnlib/log/LogMgr;
.source "MfsLogMgr.java"


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfslib/MfsAppContext;)V
    .locals 0
    .param p1, "context"    # Lcom/felicanetworks/mfslib/MfsAppContext;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/log/LogMgr;-><init>(Lcom/felicanetworks/cmnlib/AppContext;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x24

    return v0
.end method

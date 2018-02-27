.class public Lcom/felicanetworks/cmnlib/AppContext;
.super Ljava/lang/Object;
.source "AppContext.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# instance fields
.field public androidContext:Landroid/content/Context;

.field public felica:Lcom/felicanetworks/mfc/Felica;

.field public idm:Ljava/lang/String;

.field public logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

.field public sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

.field public userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/felicanetworks/cmnlib/AppContext;->androidContext:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    .line 25
    iput-object v0, p0, Lcom/felicanetworks/cmnlib/AppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    .line 28
    iput-object v0, p0, Lcom/felicanetworks/cmnlib/AppContext;->felica:Lcom/felicanetworks/mfc/Felica;

    .line 31
    iput-object v0, p0, Lcom/felicanetworks/cmnlib/AppContext;->idm:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/felicanetworks/cmnlib/AppContext;->userAgent:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/felicanetworks/cmnview/AppData;
.super Ljava/lang/Object;
.source "AppData.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# static fields
.field private static _instance:Lcom/felicanetworks/cmnview/AppData;


# instance fields
.field public appContext:Lcom/felicanetworks/cmnlib/AppContext;

.field public applicationDisabled:Z

.field public locale:Ljava/util/Locale;

.field public logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/felicanetworks/cmnview/AppData;

    invoke-direct {v0}, Lcom/felicanetworks/cmnview/AppData;-><init>()V

    sput-object v0, Lcom/felicanetworks/cmnview/AppData;->_instance:Lcom/felicanetworks/cmnview/AppData;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    .line 37
    iput-object v0, p0, Lcom/felicanetworks/cmnview/AppData;->appContext:Lcom/felicanetworks/cmnlib/AppContext;

    .line 40
    iput-object v0, p0, Lcom/felicanetworks/cmnview/AppData;->locale:Ljava/util/Locale;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/cmnview/AppData;->applicationDisabled:Z

    return-void
.end method

.method public static getInstance()Lcom/felicanetworks/cmnview/AppData;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/felicanetworks/cmnview/AppData;->_instance:Lcom/felicanetworks/cmnview/AppData;

    return-object v0
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/felicanetworks/cmnctrl/database/DatabaseAccessException;
.super Lcom/felicanetworks/cmnlib/CommonAppException;
.source "DatabaseAccessException.java"


# static fields
.field public static final ID_DBFILE_DAMAGE:I = 0x1

.field public static final ID_NO_FREE_SPACE:I = 0x0

.field public static final ID_OTHER_FACTOR:I = 0x2


# instance fields
.field private errorId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p2}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccessException;->errorId:I

    .line 37
    iput p1, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccessException;->errorId:I

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "errorId"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccessException;->errorId:I

    .line 48
    iput p2, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccessException;->errorId:I

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;I)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "identifierCode"    # Ljava/lang/String;
    .param p3, "errorId"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccessException;->errorId:I

    .line 60
    iput p3, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccessException;->errorId:I

    .line 61
    invoke-virtual {p0, p2}, Lcom/felicanetworks/cmnctrl/database/DatabaseAccessException;->setErrIdentifierCode(Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method public getCatExp()Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;
    .locals 3

    .prologue
    .line 94
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    .line 96
    .local v0, "ret":Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;
    iget v1, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccessException;->errorId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 100
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    .line 105
    :cond_0
    return-object v0
.end method

.method public getErrorId()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccessException;->errorId:I

    return v0
.end method

.method public getExceptionCode()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x6

    return v0
.end method

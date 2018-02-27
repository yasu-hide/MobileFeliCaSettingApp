.class public Lcom/felicanetworks/cmnlib/log/LogMgrException;
.super Lcom/felicanetworks/cmnlib/CommonAppException;
.source "LogMgrException.java"


# static fields
.field public static final ID_DBFILE_DAMAGE:I = 0x1

.field public static final ID_NO_FREE_SPACE:I = 0x0

.field public static final ID_OTHER_FACTOR:I = -0x1


# instance fields
.field errId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/felicanetworks/cmnlib/log/LogMgrException;->errId:I

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/felicanetworks/cmnctrl/database/DatabaseAccessException;Ljava/lang/String;)V
    .locals 2
    .param p1, "e"    # Lcom/felicanetworks/cmnctrl/database/DatabaseAccessException;
    .param p2, "errIdentifierCode"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 73
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    iput v1, p0, Lcom/felicanetworks/cmnlib/log/LogMgrException;->errId:I

    .line 78
    invoke-virtual {p1}, Lcom/felicanetworks/cmnctrl/database/DatabaseAccessException;->getErrorId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 95
    iput v1, p0, Lcom/felicanetworks/cmnlib/log/LogMgrException;->errId:I

    .line 101
    :goto_0
    return-void

    .line 83
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/cmnlib/log/LogMgrException;->errId:I

    goto :goto_0

    .line 89
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/felicanetworks/cmnlib/log/LogMgrException;->errId:I

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "errIdentifierCode"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/felicanetworks/cmnlib/log/LogMgrException;->errId:I

    .line 113
    invoke-super {p0, p2}, Lcom/felicanetworks/cmnlib/CommonAppException;->setErrIdentifierCode(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/String;)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/felicanetworks/cmnlib/log/LogMgrException;->errId:I

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/felicanetworks/cmnlib/log/LogMgrException;->errId:I

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/felicanetworks/cmnlib/log/LogMgrException;->errId:I

    .line 62
    return-void
.end method


# virtual methods
.method public getCatExp()Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;
    .locals 3

    .prologue
    .line 131
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    .line 133
    .local v0, "ret":Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;
    iget v1, p0, Lcom/felicanetworks/cmnlib/log/LogMgrException;->errId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 137
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    .line 142
    :cond_0
    return-object v0
.end method

.method public getErrorId()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/felicanetworks/cmnlib/log/LogMgrException;->errId:I

    return v0
.end method

.method public getExceptionCode()I
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x7

    return v0
.end method

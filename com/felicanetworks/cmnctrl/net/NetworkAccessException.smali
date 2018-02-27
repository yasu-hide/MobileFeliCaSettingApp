.class public Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;
.super Lcom/felicanetworks/cmnlib/CommonAppException;
.source "NetworkAccessException.java"


# static fields
.field public static final ID_CANCELED:I = 0x5

.field public static final ID_CONNECT_ERROR:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_IOERROR:I = 0x4

.field public static final ID_OTHER:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_TIMEOUT:I = 0x3

.field public static final ID_TIMEOUT_SETTING_ERROR:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_URLERROR:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private errorId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "errorId"    # I

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/String;)V

    .line 64
    iput p1, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;->errorId:I

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;I)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "identifierCode"    # Ljava/lang/String;
    .param p3, "errorId"    # I

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    iput p3, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;->errorId:I

    .line 77
    invoke-virtual {p0, p2}, Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;->setErrIdentifierCode(Ljava/lang/String;)V

    .line 78
    return-void
.end method


# virtual methods
.method public getErrorId()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;->errorId:I

    return v0
.end method

.method public getExceptionCode()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x5

    return v0
.end method

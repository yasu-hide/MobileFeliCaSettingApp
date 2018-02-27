.class public Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;
.super Lcom/felicanetworks/cmnlib/CommonAppException;
.source "FelicaAccessException.java"


# static fields
.field public static final TYPE_FELICA_TIMEOUT_ERROR:I = 0x2

.field public static final TYPE_MFC_OTHER_ERROR:I = 0x3

.field public static final TYPE_NOT_SYSTEM_ERROR:I = 0x0

.field public static final TYPE_OTHER_ERROR:I = 0x1

.field private static final serialVersionUID:J = -0x5b32cab00147472L


# instance fields
.field private errorId:I

.field private felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p2}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->errorId:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .line 93
    iput p1, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->errorId:I

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->errorId:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->errorId:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;I)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "identifierCode"    # Ljava/lang/String;
    .param p3, "errorId"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/Throwable;)V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->errorId:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .line 81
    invoke-super {p0, p2}, Lcom/felicanetworks/cmnlib/CommonAppException;->setErrIdentifierCode(Ljava/lang/String;)V

    .line 82
    iput p3, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->errorId:I

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "identifierCode"    # Ljava/lang/String;
    .param p3, "errorId"    # I
    .param p4, "felicaErrInfo"    # Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/Throwable;)V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->errorId:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .line 106
    invoke-super {p0, p2}, Lcom/felicanetworks/cmnlib/CommonAppException;->setErrIdentifierCode(Ljava/lang/String;)V

    .line 107
    iput p3, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->errorId:I

    .line 108
    iput-object p4, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .line 109
    return-void
.end method


# virtual methods
.method public getErrorId()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->errorId:I

    return v0
.end method

.method public getExceptionCode()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x3

    return v0
.end method

.method public getFelicaErrInfo()Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    return-object v0
.end method

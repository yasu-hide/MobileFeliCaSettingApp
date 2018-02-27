.class public Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;
.super Lcom/felicanetworks/cmnlib/CommonAppException;
.source "MfsFelicaAccessException.java"


# static fields
.field public static final TYPE_FELICA_TIMEOUT_ERROR:I = 0x4

.field public static final TYPE_ILLEGALARGUMENT:I = 0x2

.field public static final TYPE_MFC_OTHER_ERROR:I = 0x5

.field public static final TYPE_OPARATIONREQUESTED:I = 0x3

.field public static final TYPE_OTHER_ERROR:I = 0x1

.field private static final serialVersionUID:J = -0x5b32cab00147472L


# instance fields
.field private errorId:I

.field private felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "errorId"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;->felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .line 69
    iput p1, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;->errorId:I

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;->felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;I)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "identifierCode"    # Ljava/lang/String;
    .param p3, "errorId"    # I

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;->felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .line 81
    invoke-super {p0, p2}, Lcom/felicanetworks/cmnlib/CommonAppException;->setErrIdentifierCode(Ljava/lang/String;)V

    .line 82
    iput p3, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;->errorId:I

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
    .line 104
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/Throwable;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;->felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .line 105
    invoke-super {p0, p2}, Lcom/felicanetworks/cmnlib/CommonAppException;->setErrIdentifierCode(Ljava/lang/String;)V

    .line 106
    iput p3, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;->errorId:I

    .line 107
    iput-object p4, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;->felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .line 108
    return-void
.end method


# virtual methods
.method public getErrorId()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;->errorId:I

    return v0
.end method

.method public getExceptionCode()I
    .locals 1

    .prologue
    .line 151
    const/16 v0, 0x202

    return v0
.end method

.method public getFelicaErrInfo()Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;->felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    return-object v0
.end method

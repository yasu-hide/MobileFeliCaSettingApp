.class public Lcom/felicanetworks/mfsctrl/ControlFunctionException;
.super Lcom/felicanetworks/cmnlib/CommonAppException;
.source "ControlFunctionException.java"


# static fields
.field public static final ERROR_CODE_BADPARAM:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_CODE_BADSTATUS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_CODE_FATAL:I = 0x3

.field private static final serialVersionUID:J = -0x53cb4b22afc2077L


# instance fields
.field private _errorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/felicanetworks/mfsctrl/ControlFunctionException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "errIdentifierCode"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionException;->_errorCode:I

    .line 60
    invoke-super {p0, p2}, Lcom/felicanetworks/cmnlib/CommonAppException;->setErrIdentifierCode(Ljava/lang/String;)V

    .line 61
    iput p3, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionException;->_errorCode:I

    .line 65
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionException;->_errorCode:I

    return v0
.end method

.method public getExceptionCode()I
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0x201

    return v0
.end method

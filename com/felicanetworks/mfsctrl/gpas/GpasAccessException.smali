.class public Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;
.super Lcom/felicanetworks/cmnlib/CommonAppException;
.source "GpasAccessException.java"


# static fields
.field public static final ID_GPAS_ACCESS_ERROR:I = 0x1

.field public static final ID_GPAS_ERROR_OTHER:I = -0x1

.field public static final ID_OTHER_ERROR:I = 0x2

.field public static final ID_UICC_UNINITIALIZE:I = 0x0

.field private static final MAX_GPAS_ERROR:I = 0xff

.field private static final MIN_GPAS_ERROR:I = 0x0

.field private static final STR_GPAS_ERROR_INFO_FORMAT:Ljava/lang/String; = "%02X%02X"

.field public static final STR_GPAS_ERROR_OTHER:Ljava/lang/String; = "----"

.field public static final TYPE_GPAS_ERROR_OTHER:I = -0x1


# instance fields
.field private errorId:I

.field private gpasErrorId:I

.field private gpasErrorType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/felicanetworks/gpaslib/GpasException;)V
    .locals 2
    .param p1, "errorId"    # I
    .param p2, "errIdentifierCode"    # Ljava/lang/String;
    .param p3, "ge"    # Lcom/felicanetworks/gpaslib/GpasException;

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    iput p1, p0, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->errorId:I

    .line 67
    invoke-virtual {p3}, Lcom/felicanetworks/gpaslib/GpasException;->getID()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->gpasErrorId:I

    .line 68
    invoke-virtual {p3}, Lcom/felicanetworks/gpaslib/GpasException;->getType()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->gpasErrorType:I

    .line 69
    invoke-virtual {p0, p2}, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->setErrIdentifierCode(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "errorId"    # I
    .param p2, "errIdentifierCode"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v2, -0x1

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    iput p1, p0, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->errorId:I

    .line 88
    iput v2, p0, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->gpasErrorId:I

    .line 89
    iput v2, p0, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->gpasErrorType:I

    .line 90
    invoke-virtual {p0, p2}, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->setErrIdentifierCode(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private checkErrorInfo()Z
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v0, 0x0

    .line 155
    iget v1, p0, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->gpasErrorId:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->gpasErrorId:I

    if-le v1, v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    iget v1, p0, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->gpasErrorType:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->gpasErrorType:I

    if-gt v1, v2, :cond_0

    .line 157
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getErrorId()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->errorId:I

    return v0
.end method

.method public getExceptionCode()I
    .locals 1

    .prologue
    .line 165
    const/16 v0, 0x204

    return v0
.end method

.method public getGpasErrorId()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->gpasErrorId:I

    return v0
.end method

.method public getGpasErrorInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 138
    const-string v0, ""

    .line 139
    .local v0, "strGpasErrorInfo":Ljava/lang/String;
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->checkErrorInfo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    const-string v0, "----"

    .line 144
    :goto_0
    return-object v0

    .line 142
    :cond_0
    const-string v1, "%02X%02X"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->gpasErrorId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->gpasErrorType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGpasErrorType()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->gpasErrorType:I

    return v0
.end method

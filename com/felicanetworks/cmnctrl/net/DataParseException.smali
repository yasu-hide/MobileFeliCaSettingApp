.class public Lcom/felicanetworks/cmnctrl/net/DataParseException;
.super Lcom/felicanetworks/cmnlib/CommonAppException;
.source "DataParseException.java"


# static fields
.field public static final ID_ATTRIBUTE_ERROR:I = 0x1

.field public static final ID_COMMUNICATION_ERROR:I = 0x2

.field public static final ID_LENGTH_ERROR:I = 0x0

.field public static final ID_OTHER_ERROR:I = 0x3


# instance fields
.field private errorId:I

.field private errorRecordPosition:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 2
    .param p1, "errorRecordPosition"    # I
    .param p2, "errorId"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/String;)V

    .line 41
    iput p1, p0, Lcom/felicanetworks/cmnctrl/net/DataParseException;->errorRecordPosition:I

    .line 42
    iput p2, p0, Lcom/felicanetworks/cmnctrl/net/DataParseException;->errorId:I

    .line 43
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/String;)V

    .line 82
    iput p1, p0, Lcom/felicanetworks/cmnctrl/net/DataParseException;->errorId:I

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;I)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "identifierCode"    # Ljava/lang/String;
    .param p3, "errorId"    # I

    .prologue
    .line 69
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

    .line 70
    iput p3, p0, Lcom/felicanetworks/cmnctrl/net/DataParseException;->errorId:I

    .line 71
    invoke-virtual {p0, p2}, Lcom/felicanetworks/cmnctrl/net/DataParseException;->setErrIdentifierCode(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;II)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "identifierCode"    # Ljava/lang/String;
    .param p3, "errorRecordPosition"    # I
    .param p4, "errorId"    # I

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pos:"

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

    .line 56
    iput p3, p0, Lcom/felicanetworks/cmnctrl/net/DataParseException;->errorRecordPosition:I

    .line 57
    iput p4, p0, Lcom/felicanetworks/cmnctrl/net/DataParseException;->errorId:I

    .line 58
    invoke-virtual {p0, p2}, Lcom/felicanetworks/cmnctrl/net/DataParseException;->setErrIdentifierCode(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public getErrorId()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/felicanetworks/cmnctrl/net/DataParseException;->errorId:I

    return v0
.end method

.method public getErrorRecordPosition()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/felicanetworks/cmnctrl/net/DataParseException;->errorRecordPosition:I

    return v0
.end method

.method public getExceptionCode()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x4

    return v0
.end method

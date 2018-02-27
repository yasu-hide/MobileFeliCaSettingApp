.class public Lcom/felicanetworks/cmnctrl/packages/PackageAccessException;
.super Lcom/felicanetworks/cmnlib/CommonAppException;
.source "PackageAccessException.java"


# static fields
.field public static final ID_OTHER_ERROR:I = 0x1

.field public static final ID_PKG_NOTFOUND_ERROR:I = 0x0

.field private static final serialVersionUID:J = -0x517b3ba9849f4bd2L


# instance fields
.field private errorId:I


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;I)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "identifierCode"    # Ljava/lang/String;
    .param p3, "errorId"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/Throwable;)V

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/felicanetworks/cmnctrl/packages/PackageAccessException;->errorId:I

    .line 36
    iput p3, p0, Lcom/felicanetworks/cmnctrl/packages/PackageAccessException;->errorId:I

    .line 37
    invoke-virtual {p0, p2}, Lcom/felicanetworks/cmnctrl/packages/PackageAccessException;->setErrIdentifierCode(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getErrorId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/felicanetworks/cmnctrl/packages/PackageAccessException;->errorId:I

    return v0
.end method

.method public getExceptionCode()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

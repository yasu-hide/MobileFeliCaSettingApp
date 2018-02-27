.class public Lcom/felicanetworks/mfslib/launch/AppLauncherException;
.super Lcom/felicanetworks/cmnlib/CommonAppException;
.source "AppLauncherException.java"


# static fields
.field public static final ID_APP_START_ERROR:I = 0x0

.field public static final ID_OTHER_ERROR:I = 0x1

.field private static final serialVersionUID:J = 0x4c36be482ac3dd5fL


# instance fields
.field private errorId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p2}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/felicanetworks/mfslib/launch/AppLauncherException;->errorId:I

    .line 34
    iput p1, p0, Lcom/felicanetworks/mfslib/launch/AppLauncherException;->errorId:I

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;I)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "identifierCode"    # Ljava/lang/String;
    .param p3, "errorId"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/Throwable;)V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/felicanetworks/mfslib/launch/AppLauncherException;->errorId:I

    .line 46
    iput p3, p0, Lcom/felicanetworks/mfslib/launch/AppLauncherException;->errorId:I

    .line 47
    invoke-virtual {p0, p2}, Lcom/felicanetworks/mfslib/launch/AppLauncherException;->setErrIdentifierCode(Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getErrorId()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/felicanetworks/mfslib/launch/AppLauncherException;->errorId:I

    return v0
.end method

.method public getExceptionCode()I
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x103

    return v0
.end method

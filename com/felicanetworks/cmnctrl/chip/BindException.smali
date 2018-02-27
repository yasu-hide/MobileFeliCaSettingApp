.class public Lcom/felicanetworks/cmnctrl/chip/BindException;
.super Lcom/felicanetworks/cmnlib/CommonAppException;
.source "BindException.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/ExceptionCodeInterface;


# static fields
.field private static final serialVersionUID:J = 0x35c5f9b96e0df394L


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "identifierCode"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/Throwable;)V

    .line 28
    invoke-virtual {p0, p2}, Lcom/felicanetworks/cmnctrl/chip/BindException;->setErrIdentifierCode(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getExceptionCode()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x2

    return v0
.end method

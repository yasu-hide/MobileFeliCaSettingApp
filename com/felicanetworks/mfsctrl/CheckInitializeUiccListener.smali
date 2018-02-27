.class public interface abstract Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;
.super Ljava/lang/Object;
.source "CheckInitializeUiccListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;,
        Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;
    }
.end annotation


# virtual methods
.method public abstract onComplete(Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;)V
.end method

.method public abstract onError(Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;Ljava/lang/String;Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;)V
.end method

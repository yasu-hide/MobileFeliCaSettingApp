.class public interface abstract Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;
.super Ljava/lang/Object;
.source "FelicaInitializeListener.java"


# static fields
.field public static final RESULT_CODE_ERROR_UNKNOWN:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_CODE_WARNING_COMMUNICATIONERROR:I = 0x0

.field public static final RESULT_CODE_WARNING_INITFAILED:I = 0x1


# virtual methods
.method public abstract onComplete()V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onWarning(I)V
.end method

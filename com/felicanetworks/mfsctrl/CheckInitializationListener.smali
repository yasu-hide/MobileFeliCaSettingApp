.class public interface abstract Lcom/felicanetworks/mfsctrl/CheckInitializationListener;
.super Ljava/lang/Object;
.source "CheckInitializationListener.java"


# static fields
.field public static final RESULT_CODE_COMPLETE_DONEINITIALIZATION:I = 0x1

.field public static final RESULT_CODE_COMPLETE_NEEDINITIALIZATION:I = 0x0

.field public static final RESULT_CODE_ERROR_FELICATIMEOUT:I = 0x7

.field public static final RESULT_CODE_ERROR_MFCOTHER:I = 0x8

.field public static final RESULT_CODE_ERROR_MFCPERMINSPECT:I = 0x6

.field public static final RESULT_CODE_ERROR_UNKNOWN:I = 0x5

.field public static final RESULT_CODE_WARNING_FELICACHIPINUSER:I = 0x2

.field public static final RESULT_CODE_WARNING_LOCKEDFELICACHIP:I = 0x3

.field public static final RESULT_DATA_NONE:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# virtual methods
.method public abstract onComplete(I)V
.end method

.method public abstract onError(ILjava/lang/String;Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
.end method

.method public abstract onWarning(II)V
.end method

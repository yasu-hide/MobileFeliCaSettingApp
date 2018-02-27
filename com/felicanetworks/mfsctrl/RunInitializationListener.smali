.class public interface abstract Lcom/felicanetworks/mfsctrl/RunInitializationListener;
.super Ljava/lang/Object;
.source "RunInitializationListener.java"


# static fields
.field public static final RESULT_CODE_COMPLETE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_CODE_ERROR_FELICATIMEOUT:I = 0x7

.field public static final RESULT_CODE_ERROR_MFCOTHER:I = 0x8

.field public static final RESULT_CODE_ERROR_MFCPERMINSPECT:I = 0x6

.field public static final RESULT_CODE_ERROR_UNKNOWN:I = 0x9

.field public static final RESULT_CODE_PROGRESS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_CODE_WARNING_COMMUNICATIONERROR:I = 0x8

.field public static final RESULT_CODE_WARNING_FAILED:I = 0x5

.field public static final RESULT_CODE_WARNING_FELICACHIPINUSE:I = 0x6

.field public static final RESULT_CODE_WARNING_LOCKEDFELICACHIP:I = 0x7

.field public static final RESULT_CODE_WARNING_OVERCROWDING:I = 0x3

.field public static final RESULT_CODE_WARNING_SERVERMAINTENANCE:I = 0x4

.field public static final RESULT_DATA_NONE:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# virtual methods
.method public abstract onComplete()V
.end method

.method public abstract onError(ILjava/lang/String;Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
.end method

.method public abstract onProgress(I)V
.end method

.method public abstract onWarning(II)V
.end method

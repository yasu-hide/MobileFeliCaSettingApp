.class public interface abstract Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;
.super Ljava/lang/Object;
.source "FelicaAccessListener.java"


# static fields
.field public static final TYPE_FELICA_LOCK_ERROR:I = 0x1

.field public static final TYPE_FELICA_TIMEOUT_ERROR:I = 0x4

.field public static final TYPE_MFC_OTHER_ERROR:I = 0x5

.field public static final TYPE_MFC_PERM_INSPECT_ERROR:I = 0x3

.field public static final TYPE_OTHER_APP_USE:I = 0x0

.field public static final TYPE_OTHER_ERROR:I = 0x2


# virtual methods
.method public abstract errorResult(ILjava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
.end method

.method public abstract finishResult()V
.end method

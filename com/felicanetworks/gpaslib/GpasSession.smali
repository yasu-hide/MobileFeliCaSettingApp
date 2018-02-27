.class public interface abstract Lcom/felicanetworks/gpaslib/GpasSession;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_GP_CARD_ACCESS_TIMEOUT:J = 0x7d0L

.field public static final MAX_GP_CARD_ACCESS_TIMEOUT:J = 0xea60L

.field public static final MIN_GP_CARD_ACCESS_TIMEOUT:J


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation
.end method

.method public abstract getGpCardAccessTimeout()J
.end method

.method public abstract getGpasApduManager()Lcom/felicanetworks/gpaslib/GpasApduManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation
.end method

.method public abstract getGpasContactlessService([B)Lcom/felicanetworks/gpaslib/GpasContactlessService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation
.end method

.method public abstract getGpasContactlessServiceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation
.end method

.method public abstract getGpasPaymentServiceManager()Lcom/felicanetworks/gpaslib/GpasPaymentServiceManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation
.end method

.method public abstract getIccid()Ljava/lang/String;
.end method

.method public abstract setGpCardAccessTimeout(J)V
.end method

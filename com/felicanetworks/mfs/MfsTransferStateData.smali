.class public Lcom/felicanetworks/mfs/MfsTransferStateData;
.super Lcom/felicanetworks/cmnview/TransferStateData;
.source "MfsTransferStateData.java"


# instance fields
.field public pid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/felicanetworks/cmnview/TransferStateData;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/mfs/MfsTransferStateData;->pid:I

    return-void
.end method

.class public Lcom/felicanetworks/cmnview/TransferSenderInfo;
.super Ljava/lang/Object;
.source "TransferSenderInfo.java"


# instance fields
.field public senderInfo:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/felicanetworks/cmnview/TransferSenderInfo;->senderInfo:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/felicanetworks/cmnview/TransferSenderInfo;->senderInfo:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

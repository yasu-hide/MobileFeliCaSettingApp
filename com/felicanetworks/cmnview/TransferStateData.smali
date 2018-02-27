.class public Lcom/felicanetworks/cmnview/TransferStateData;
.super Ljava/lang/Object;
.source "TransferStateData.java"


# instance fields
.field public errorId:Ljava/lang/String;

.field public felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/felicanetworks/cmnview/TransferStateData;->errorId:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/felicanetworks/cmnview/TransferStateData;->felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/felicanetworks/cmnview/TransferStateData;->errorId:Ljava/lang/String;

    return-object v0
.end method

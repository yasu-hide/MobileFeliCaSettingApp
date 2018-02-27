.class public Lcom/felicanetworks/mfslib/MfsAppContext;
.super Lcom/felicanetworks/cmnlib/AppContext;
.source "MfsAppContext.java"


# instance fields
.field public activeActivity:Landroid/app/Activity;

.field public fsc:Lcom/felicanetworks/mfc/FSC;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/felicanetworks/cmnlib/AppContext;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/felicanetworks/mfslib/MfsAppContext;->activeActivity:Landroid/app/Activity;

    .line 22
    iput-object v0, p0, Lcom/felicanetworks/mfslib/MfsAppContext;->fsc:Lcom/felicanetworks/mfc/FSC;

    .line 28
    return-void
.end method

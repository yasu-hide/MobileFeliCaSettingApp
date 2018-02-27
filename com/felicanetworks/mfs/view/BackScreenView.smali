.class public Lcom/felicanetworks/mfs/view/BackScreenView;
.super Lcom/felicanetworks/cmnview/BaseWindowView;
.source "BackScreenView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnview/BaseWindowView;-><init>(Landroid/app/Activity;)V

    .line 75
    const v0, 0x7f03000b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 80
    return-void
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x3

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x20

    return v0
.end method

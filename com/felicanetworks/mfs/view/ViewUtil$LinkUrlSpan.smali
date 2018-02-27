.class public Lcom/felicanetworks/mfs/view/ViewUtil$LinkUrlSpan;
.super Landroid/text/style/URLSpan;
.source "ViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfs/view/ViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkUrlSpan"
.end annotation


# instance fields
.field listener:Lcom/felicanetworks/mfs/view/ViewUtil$ClickListener;

.field urlStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/felicanetworks/mfs/view/ViewUtil$ClickListener;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/felicanetworks/mfs/view/ViewUtil$ClickListener;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 117
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/ViewUtil$LinkUrlSpan;->urlStr:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lcom/felicanetworks/mfs/view/ViewUtil$LinkUrlSpan;->listener:Lcom/felicanetworks/mfs/view/ViewUtil$ClickListener;

    .line 119
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/ViewUtil$LinkUrlSpan;->listener:Lcom/felicanetworks/mfs/view/ViewUtil$ClickListener;

    iget-object v1, p0, Lcom/felicanetworks/mfs/view/ViewUtil$LinkUrlSpan;->urlStr:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/felicanetworks/mfs/view/ViewUtil$ClickListener;->onClick(Ljava/lang/String;)V

    .line 130
    return-void
.end method

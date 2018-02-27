.class public Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;
.super Lcom/felicanetworks/mfs/view/CustomAlertDialog;
.source "BaseMsg1Btn1ProgressDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CustomProgressDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog$ViewUpdateHandler;
    }
.end annotation


# instance fields
.field private final PROGRESS_MAXVAL:I

.field private _handler:Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog$ViewUpdateHandler;

.field private _hasStarted:Z

.field private _percentFormat:Ljava/text/NumberFormat;

.field private _percentText:Landroid/widget/TextView;

.field private _progress:I

.field private _progressBar:Landroid/widget/ProgressBar;

.field private _ss:Landroid/text/SpannableString;

.field final synthetic this$0:Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;Landroid/content/Context;)V
    .locals 10
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 491
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->this$0:Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;

    .line 492
    const v5, 0x7f070017

    invoke-direct {p0, p2, v5}, Lcom/felicanetworks/mfs/view/CustomAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 397
    iput-object v7, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_progressBar:Landroid/widget/ProgressBar;

    .line 399
    iput-object v7, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_percentText:Landroid/widget/TextView;

    .line 401
    iput-object v7, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_percentFormat:Ljava/text/NumberFormat;

    .line 404
    iput v9, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->PROGRESS_MAXVAL:I

    .line 407
    iput-object v7, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_handler:Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog$ViewUpdateHandler;

    .line 410
    iput-object v7, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_ss:Landroid/text/SpannableString;

    .line 413
    iput v8, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_progress:I

    .line 416
    iput-boolean v8, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_hasStarted:Z

    .line 498
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 501
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030003

    invoke-virtual {v1, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 504
    .local v4, "view":Landroid/widget/LinearLayout;
    const v5, 0x7f030001

    invoke-virtual {v1, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 507
    .local v0, "btnView":Landroid/view/View;
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 510
    const v5, 0x7f080016

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_progressBar:Landroid/widget/ProgressBar;

    .line 513
    const v5, 0x7f080017

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_percentText:Landroid/widget/TextView;

    .line 516
    const v5, 0x7f080013

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {p1, v5}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->access$002(Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 518
    const v5, 0x7f080012

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-static {p1, v5}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->access$102(Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 521
    const v5, 0x7f080015

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {p1, v5}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->access$202(Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 522
    const v5, 0x7f080011

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-static {p1, v5}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->access$302(Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;Landroid/widget/Button;)Landroid/widget/Button;

    .line 524
    invoke-static {p1}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->access$300(Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;)Landroid/widget/Button;

    move-result-object v5

    new-instance v6, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$OnButtonClickListener;

    invoke-direct {v6, p1}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$OnButtonClickListener;-><init>(Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v5

    iput-object v5, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_percentFormat:Ljava/text/NumberFormat;

    .line 528
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_percentFormat:Ljava/text/NumberFormat;

    invoke-virtual {v5, v8}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 531
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 532
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f020044

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 535
    .local v2, "progDraw":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->onSetViewParts()V

    .line 538
    invoke-virtual {p0, v4}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->setCustomTitle(Landroid/view/View;)V

    .line 541
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v9}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 542
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 546
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 549
    new-instance v5, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog$ViewUpdateHandler;

    invoke-direct {v5, p0, v7}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog$ViewUpdateHandler;-><init>(Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$1;)V

    iput-object v5, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_handler:Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog$ViewUpdateHandler;

    .line 552
    invoke-direct {p0, v8}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->updateProgressView(I)V

    .line 567
    return-void
.end method

.method static synthetic access$500(Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;
    .param p1, "x1"    # I

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->updateProgressView(I)V

    return-void
.end method

.method private updateProgressView(I)V
    .locals 7
    .param p1, "progress"    # I

    .prologue
    .line 646
    if-ltz p1, :cond_0

    const/16 v2, 0x64

    if-lt v2, p1, :cond_0

    .line 651
    iput p1, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_progress:I

    .line 653
    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double v0, v2, v4

    .line 655
    .local v0, "percent":D
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_percentFormat:Ljava/text/NumberFormat;

    invoke-virtual {v3, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_ss:Landroid/text/SpannableString;

    .line 657
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_ss:Landroid/text/SpannableString;

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_ss:Landroid/text/SpannableString;

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 659
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_progressBar:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_progress:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 660
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_percentText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_ss:Landroid/text/SpannableString;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    .end local v0    # "percent":D
    :cond_0
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    .prologue
    .line 674
    invoke-super {p0}, Lcom/felicanetworks/mfs/view/CustomAlertDialog;->onStart()V

    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_hasStarted:Z

    .line 682
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 686
    invoke-super {p0}, Lcom/felicanetworks/mfs/view/CustomAlertDialog;->onStop()V

    .line 690
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_hasStarted:Z

    .line 694
    return-void
.end method

.method public updateProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 623
    iget-boolean v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_hasStarted:Z

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->_handler:Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog$ViewUpdateHandler;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog$ViewUpdateHandler;->sendEmptyMessage(I)Z

    .line 635
    :cond_0
    return-void
.end method

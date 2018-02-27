.class public Lcom/felicanetworks/mfs/view/CustomAlertController;
.super Ljava/lang/Object;
.source "CustomAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;,
        Lcom/felicanetworks/mfs/view/CustomAlertController$RecycleListView;,
        Lcom/felicanetworks/mfs/view/CustomAlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mScrollView_custom:Landroid/widget/ScrollView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v1, -0x1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mViewSpacingSpecified:Z

    .line 105
    iput v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIconId:I

    .line 121
    iput v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mCheckedItem:I

    .line 129
    new-instance v0, Lcom/felicanetworks/mfs/view/CustomAlertController$1;

    invoke-direct {v0, p0}, Lcom/felicanetworks/mfs/view/CustomAlertController$1;-><init>(Lcom/felicanetworks/mfs/view/CustomAlertController;)V

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 176
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mContext:Landroid/content/Context;

    .line 177
    iput-object p2, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 178
    iput-object p3, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    .line 179
    new-instance v0, Lcom/felicanetworks/mfs/view/CustomAlertController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/felicanetworks/mfs/view/CustomAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mHandler:Landroid/os/Handler;

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/felicanetworks/mfs/view/CustomAlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfs/view/CustomAlertController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/felicanetworks/mfs/view/CustomAlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfs/view/CustomAlertController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/felicanetworks/mfs/view/CustomAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/mfs/view/CustomAlertController;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/felicanetworks/mfs/view/CustomAlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfs/view/CustomAlertController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/felicanetworks/mfs/view/CustomAlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfs/view/CustomAlertController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/felicanetworks/mfs/view/CustomAlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfs/view/CustomAlertController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/felicanetworks/mfs/view/CustomAlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfs/view/CustomAlertController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/felicanetworks/mfs/view/CustomAlertController;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfs/view/CustomAlertController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/felicanetworks/mfs/view/CustomAlertController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfs/view/CustomAlertController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/felicanetworks/mfs/view/CustomAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/mfs/view/CustomAlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$902(Lcom/felicanetworks/mfs/view/CustomAlertController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/mfs/view/CustomAlertController;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mCheckedItem:I

    return p1
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    :goto_0
    return v2

    .line 187
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 188
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 191
    check-cast v1, Landroid/view/ViewGroup;

    .line 192
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 193
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 194
    add-int/lit8 v0, v0, -0x1

    .line 195
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 196
    invoke-static {p0}, Lcom/felicanetworks/mfs/view/CustomAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 201
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const/4 v5, 0x0

    .line 594
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 595
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 596
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 597
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    const v4, 0x7f08000c

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 599
    .local v0, "leftSpacer":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 600
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    const v4, 0x7f080010

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 601
    .local v2, "rightSpacer":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 602
    return-void
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 23
    .param p1, "topPanel"    # Landroid/widget/LinearLayout;
    .param p2, "contentPanel"    # Landroid/widget/LinearLayout;
    .param p3, "customPanel"    # Landroid/view/View;
    .param p4, "hasButtons"    # Z
    .param p5, "a"    # Landroid/content/res/TypedArray;
    .param p6, "hasTitle"    # Z
    .param p7, "buttonPanel"    # Landroid/view/View;

    .prologue
    .line 609
    const/16 v20, 0x0

    const v21, 0x7f020041

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 611
    .local v10, "fullDark":I
    const/16 v20, 0x1

    const v21, 0x7f020043

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 613
    .local v17, "topDark":I
    const/16 v20, 0x2

    const v21, 0x7f02003e

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 615
    .local v7, "centerDark":I
    const/16 v20, 0x3

    const v21, 0x7f02003b

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 617
    .local v4, "bottomDark":I
    const/16 v20, 0x4

    const v21, 0x7f020040

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 619
    .local v9, "fullBright":I
    const/16 v20, 0x5

    const v21, 0x7f020042

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 621
    .local v16, "topBright":I
    const/16 v20, 0x6

    const v21, 0x7f02003d

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 623
    .local v6, "centerBright":I
    const/16 v20, 0x7

    const v21, 0x7f02003a

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 625
    .local v3, "bottomBright":I
    const/16 v20, 0x8

    const v21, 0x7f02003c

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 627
    .local v5, "bottomMedium":I
    const/16 v20, 0x9

    const v21, 0x7f02003f

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 639
    .local v8, "centerMedium":I
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v19, v0

    .line 640
    .local v19, "views":[Landroid/view/View;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v13, v0, [Z

    .line 641
    .local v13, "light":[Z
    const/4 v12, 0x0

    .line 642
    .local v12, "lastView":Landroid/view/View;
    const/4 v11, 0x0

    .line 644
    .local v11, "lastLight":Z
    const/4 v14, 0x0

    .line 645
    .local v14, "pos":I
    if-eqz p6, :cond_0

    .line 646
    aput-object p1, v19, v14

    .line 647
    const/16 v20, 0x0

    aput-boolean v20, v13, v14

    .line 648
    add-int/lit8 v14, v14, 0x1

    .line 656
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/16 p2, 0x0

    .end local p2    # "contentPanel":Landroid/widget/LinearLayout;
    :cond_1
    aput-object p2, v19, v14

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    if-nez v20, :cond_4

    const/16 v20, 0x0

    :goto_0
    aput-boolean v20, v13, v14

    .line 659
    add-int/lit8 v14, v14, 0x1

    .line 660
    if-eqz p3, :cond_2

    .line 661
    aput-object p3, v19, v14

    .line 662
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mForceInverseBackground:Z

    move/from16 v20, v0

    aput-boolean v20, v13, v14

    .line 663
    add-int/lit8 v14, v14, 0x1

    .line 665
    :cond_2
    if-eqz p4, :cond_3

    .line 666
    aput-object p7, v19, v14

    .line 667
    const/16 v20, 0x1

    aput-boolean v20, v13, v14

    .line 670
    :cond_3
    const/4 v15, 0x0

    .line 671
    .local v15, "setView":Z
    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_a

    .line 672
    aget-object v18, v19, v14

    .line 673
    .local v18, "v":Landroid/view/View;
    if-nez v18, :cond_5

    .line 671
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 658
    .end local v15    # "setView":Z
    .end local v18    # "v":Landroid/view/View;
    :cond_4
    const/16 v20, 0x1

    goto :goto_0

    .line 676
    .restart local v15    # "setView":Z
    .restart local v18    # "v":Landroid/view/View;
    :cond_5
    if-eqz v12, :cond_6

    .line 677
    if-nez v15, :cond_8

    .line 678
    if-eqz v11, :cond_7

    move/from16 v20, v16

    :goto_3
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 682
    :goto_4
    const/4 v15, 0x1

    .line 684
    :cond_6
    move-object/from16 v12, v18

    .line 685
    aget-boolean v11, v13, v14

    goto :goto_2

    :cond_7
    move/from16 v20, v17

    .line 678
    goto :goto_3

    .line 680
    :cond_8
    if-eqz v11, :cond_9

    move/from16 v20, v6

    :goto_5
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_9
    move/from16 v20, v7

    goto :goto_5

    .line 688
    .end local v18    # "v":Landroid/view/View;
    :cond_a
    if-eqz v12, :cond_b

    .line 689
    if-eqz v15, :cond_f

    .line 694
    if-eqz v11, :cond_e

    if-eqz p4, :cond_d

    .end local v5    # "bottomMedium":I
    :goto_6
    invoke-virtual {v12, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 726
    .end local v9    # "fullBright":I
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 728
    move-object/from16 v0, p0

    iget v0, v0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mCheckedItem:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mCheckedItem:I

    move/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mCheckedItem:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setSelection(I)V

    .line 733
    :cond_c
    return-void

    .restart local v5    # "bottomMedium":I
    .restart local v9    # "fullBright":I
    :cond_d
    move v5, v3

    .line 694
    goto :goto_6

    :cond_e
    move v5, v4

    goto :goto_6

    .line 697
    :cond_f
    if-eqz v11, :cond_10

    .end local v9    # "fullBright":I
    :goto_8
    invoke-virtual {v12, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    .restart local v9    # "fullBright":I
    :cond_10
    move v9, v10

    goto :goto_8
.end method

.method private setupButtons()Z
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x0

    .line 531
    const/4 v3, 0x0

    .line 532
    .local v3, "defaultButton":Landroid/view/View;
    const/4 v2, 0x1

    .line 533
    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v0, 0x2

    .line 534
    .local v0, "BIT_BUTTON_NEGATIVE":I
    const/4 v1, 0x4

    .line 535
    .local v1, "BIT_BUTTON_NEUTRAL":I
    const/4 v4, 0x0

    .line 536
    .local v4, "whichButtons":I
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    const v7, 0x7f08000d

    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 537
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v7, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 540
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 548
    :goto_0
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    const v7, 0x7f08000f

    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 549
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v7, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 552
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 563
    :goto_1
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    const v7, 0x7f08000e

    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 564
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v7, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 567
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 582
    :goto_2
    if-ne v4, v2, :cond_6

    .line 583
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lcom/felicanetworks/mfs/view/CustomAlertController;->centerButton(Landroid/widget/Button;)V

    .line 590
    :cond_0
    :goto_3
    if-eqz v4, :cond_8

    const/4 v5, 0x1

    :goto_4
    return v5

    .line 542
    :cond_1
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v7, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 544
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 545
    or-int/2addr v4, v2

    goto :goto_0

    .line 554
    :cond_2
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v7, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 557
    if-nez v3, :cond_3

    .line 558
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 560
    :cond_3
    or-int/2addr v4, v0

    goto :goto_1

    .line 569
    :cond_4
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v7, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 572
    if-nez v3, :cond_5

    .line 573
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 575
    :cond_5
    or-int/2addr v4, v1

    goto :goto_2

    .line 584
    :cond_6
    if-ne v4, v0, :cond_7

    .line 585
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lcom/felicanetworks/mfs/view/CustomAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 586
    :cond_7
    if-ne v4, v1, :cond_0

    .line 587
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lcom/felicanetworks/mfs/view/CustomAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_8
    move v5, v6

    .line 590
    goto :goto_4
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 6
    .param p1, "contentPanel"    # Landroid/widget/LinearLayout;

    .prologue
    const v5, 0x7f080007

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 496
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 497
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 500
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mCustomTitleView:Landroid/view/View;

    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mScrollView_custom:Landroid/widget/ScrollView;

    .line 501
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mScrollView_custom:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 505
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mMessageView:Landroid/widget/TextView;

    .line 506
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 528
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 516
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 517
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 518
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 522
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10
    .param p1, "topPanel"    # Landroid/widget/LinearLayout;

    .prologue
    const v6, 0x7f080002

    const/16 v9, 0x8

    .line 437
    const/4 v1, 0x1

    .line 439
    .local v1, "hasTitle":Z
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 441
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 444
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 448
    .local v3, "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 489
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "titleTemplate":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 450
    :cond_1
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .line 452
    .local v0, "hasTextTitle":Z
    :goto_1
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x7f080003

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    .line 453
    if-eqz v0, :cond_5

    .line 456
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x7f080004

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mTitleView:Landroid/widget/TextView;

    .line 458
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    const v5, 0x7f020039

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 465
    iget v4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIconId:I

    if-lez v4, :cond_3

    .line 466
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 450
    .end local v0    # "hasTextTitle":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 467
    .restart local v0    # "hasTextTitle":Z
    :cond_3
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 468
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 469
    :cond_4
    iget v4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIconId:I

    if-nez v4, :cond_0

    .line 474
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 478
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 483
    :cond_5
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 484
    .restart local v3    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 485
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 486
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 14

    .prologue
    .line 391
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7f080006

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 392
    .local v2, "contentPanel":Landroid/widget/LinearLayout;
    invoke-direct {p0, v2}, Lcom/felicanetworks/mfs/view/CustomAlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 393
    invoke-direct {p0}, Lcom/felicanetworks/mfs/view/CustomAlertController;->setupButtons()Z

    move-result v4

    .line 395
    .local v4, "hasButtons":Z
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7f080001

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 396
    .local v1, "topPanel":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    sget-object v11, Lcom/felicanetworks/mfs/R$styleable;->CustomAlertDialog:[I

    const v12, 0x7f01000f

    const/4 v13, 0x0

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 398
    .local v5, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/felicanetworks/mfs/view/CustomAlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v6

    .line 400
    .local v6, "hasTitle":Z
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7f08000b

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 401
    .local v7, "buttonPanel":Landroid/view/View;
    if-nez v4, :cond_0

    .line 402
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 405
    :cond_0
    const/4 v3, 0x0

    .line 406
    .local v3, "customPanel":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 407
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7f080009

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "customPanel":Landroid/widget/FrameLayout;
    check-cast v3, Landroid/widget/FrameLayout;

    .line 408
    .restart local v3    # "customPanel":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7f08000a

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 409
    .local v8, "custom":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mView:Landroid/view/View;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    iget-boolean v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_1

    .line 411
    iget v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mViewSpacingLeft:I

    iget v10, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mViewSpacingTop:I

    iget v11, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mViewSpacingRight:I

    iget v12, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mViewSpacingBottom:I

    invoke-virtual {v8, v0, v10, v11, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 415
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 424
    .end local v8    # "custom":Landroid/widget/FrameLayout;
    :cond_2
    :goto_0
    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 425
    :cond_3
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7f080005

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 426
    .local v9, "divider":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .end local v9    # "divider":Landroid/view/View;
    :cond_4
    move-object v0, p0

    .line 429
    invoke-direct/range {v0 .. v7}, Lcom/felicanetworks/mfs/view/CustomAlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 430
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 434
    return-void

    .line 418
    :cond_5
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7f080009

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 2
    .param p1, "whichButton"    # I

    .prologue
    const/4 v0, 0x0

    .line 337
    packed-switch p1, :pswitch_data_0

    .line 345
    :cond_0
    :goto_0
    return-object v0

    .line 339
    :pswitch_0
    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 341
    :pswitch_1
    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 343
    :pswitch_2
    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    const/high16 v2, 0x20000

    .line 209
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 211
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/felicanetworks/mfs/view/CustomAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 216
    invoke-direct {p0}, Lcom/felicanetworks/mfs/view/CustomAlertController;->setupView()V

    .line 220
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 353
    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v0

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mScrollView_custom:Landroid/widget/ScrollView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mScrollView_custom:Landroid/widget/ScrollView;

    invoke-virtual {v1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 372
    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v0

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mScrollView_custom:Landroid/widget/ScrollView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mScrollView_custom:Landroid/widget/ScrollView;

    invoke-virtual {v1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 279
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 280
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 283
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :pswitch_0
    iput-object p2, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 287
    iput-object p4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 303
    :goto_0
    return-void

    .line 291
    :pswitch_1
    iput-object p2, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 292
    iput-object p4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 296
    :pswitch_2
    iput-object p2, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 297
    iput-object p4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mCustomTitleView:Landroid/view/View;

    .line 234
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 311
    iput p1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIconId:I

    .line 312
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 313
    if-lez p1, :cond_1

    .line 314
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    if-nez p1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 323
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mForceInverseBackground:Z

    .line 330
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 238
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mTitle:Ljava/lang/CharSequence;

    .line 224
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mView:Landroid/view/View;

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mViewSpacingSpecified:Z

    .line 249
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 256
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mView:Landroid/view/View;

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mViewSpacingSpecified:Z

    .line 258
    iput p2, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mViewSpacingLeft:I

    .line 259
    iput p3, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mViewSpacingTop:I

    .line 260
    iput p4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mViewSpacingRight:I

    .line 261
    iput p5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController;->mViewSpacingBottom:I

    .line 262
    return-void
.end method

.class public Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;
.super Ljava/lang/Object;
.source "CustomAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfs/view/CustomAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    iput v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mIconId:I

    .line 782
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 786
    iput v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mCheckedItem:I

    .line 794
    iput-boolean v2, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 810
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 811
    iput-boolean v2, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mCancelable:Z

    .line 812
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 813
    return-void
.end method

.method private createListView(Lcom/felicanetworks/mfs/view/CustomAlertController;)V
    .locals 10
    .param p1, "dialog"    # Lcom/felicanetworks/mfs/view/CustomAlertController;

    .prologue
    const v4, 0x7f08001f

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 871
    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030007

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/felicanetworks/mfs/view/CustomAlertController$RecycleListView;

    .line 875
    .local v6, "listView":Lcom/felicanetworks/mfs/view/CustomAlertController$RecycleListView;
    iget-boolean v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_5

    .line 876
    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_4

    .line 877
    new-instance v0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams$1;

    iget-object v2, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    const v3, 0x7f030009

    iget-object v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams$1;-><init>(Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/felicanetworks/mfs/view/CustomAlertController$RecycleListView;)V

    .line 930
    .local v0, "adapter":Landroid/widget/ListAdapter;
    :goto_0
    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_0

    .line 931
    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 937
    :cond_0
    invoke-static {p1, v0}, Lcom/felicanetworks/mfs/view/CustomAlertController;->access$802(Lcom/felicanetworks/mfs/view/CustomAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 938
    iget v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mCheckedItem:I

    invoke-static {p1, v1}, Lcom/felicanetworks/mfs/view/CustomAlertController;->access$902(Lcom/felicanetworks/mfs/view/CustomAlertController;I)I

    .line 940
    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_9

    .line 941
    new-instance v1, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams$3;-><init>(Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;Lcom/felicanetworks/mfs/view/CustomAlertController;)V

    invoke-virtual {v6, v1}, Lcom/felicanetworks/mfs/view/CustomAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 962
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_2

    .line 963
    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Lcom/felicanetworks/mfs/view/CustomAlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 966
    :cond_2
    iget-boolean v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_a

    .line 967
    invoke-virtual {v6, v9}, Lcom/felicanetworks/mfs/view/CustomAlertController$RecycleListView;->setChoiceMode(I)V

    .line 971
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v1, v6, Lcom/felicanetworks/mfs/view/CustomAlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 972
    invoke-static {p1, v6}, Lcom/felicanetworks/mfs/view/CustomAlertController;->access$1002(Lcom/felicanetworks/mfs/view/CustomAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 973
    return-void

    .line 892
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    new-instance v0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams$2;

    iget-object v3, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams$2;-><init>(Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/felicanetworks/mfs/view/CustomAlertController$RecycleListView;)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 919
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_5
    iget-boolean v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_6

    const v2, 0x7f03000a

    .line 921
    .local v2, "layout":I
    :goto_3
    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_8

    .line 922
    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :goto_4
    goto :goto_0

    .line 919
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "layout":I
    :cond_6
    const v2, 0x7f030008

    goto :goto_3

    .line 922
    .restart local v2    # "layout":I
    :cond_7
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_4

    .line 925
    :cond_8
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v7, v9, [Ljava/lang/String;

    iget-object v8, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v8, v7, v5

    new-array v8, v9, [I

    aput v4, v8, v5

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 949
    .end local v2    # "layout":I
    :cond_9
    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_1

    .line 950
    new-instance v1, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams$4;

    invoke-direct {v1, p0, v6, p1}, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams$4;-><init>(Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;Lcom/felicanetworks/mfs/view/CustomAlertController$RecycleListView;Lcom/felicanetworks/mfs/view/CustomAlertController;)V

    invoke-virtual {v6, v1}, Lcom/felicanetworks/mfs/view/CustomAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 968
    :cond_a
    iget-boolean v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_3

    .line 969
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Lcom/felicanetworks/mfs/view/CustomAlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public apply(Lcom/felicanetworks/mfs/view/CustomAlertController;)V
    .locals 6
    .param p1, "dialog"    # Lcom/felicanetworks/mfs/view/CustomAlertController;

    .prologue
    const/4 v3, 0x0

    .line 816
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 817
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/felicanetworks/mfs/view/CustomAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 829
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/felicanetworks/mfs/view/CustomAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 832
    :cond_1
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 833
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/felicanetworks/mfs/view/CustomAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 836
    :cond_2
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 837
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/felicanetworks/mfs/view/CustomAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 840
    :cond_3
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 841
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/felicanetworks/mfs/view/CustomAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 844
    :cond_4
    iget-boolean v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mForceInverseBackground:Z

    if-eqz v0, :cond_5

    .line 845
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/felicanetworks/mfs/view/CustomAlertController;->setInverseBackgroundForced(Z)V

    .line 849
    :cond_5
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    .line 850
    :cond_6
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->createListView(Lcom/felicanetworks/mfs/view/CustomAlertController;)V

    .line 852
    :cond_7
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 853
    iget-boolean v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_c

    .line 854
    iget-object v1, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/felicanetworks/mfs/view/CustomAlertController;->setView(Landroid/view/View;IIII)V

    .line 868
    :cond_8
    :goto_1
    return-void

    .line 819
    :cond_9
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    .line 820
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/felicanetworks/mfs/view/CustomAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 822
    :cond_a
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 823
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/felicanetworks/mfs/view/CustomAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 825
    :cond_b
    iget v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mIconId:I

    if-ltz v0, :cond_0

    .line 826
    iget v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/felicanetworks/mfs/view/CustomAlertController;->setIcon(I)V

    goto :goto_0

    .line 857
    :cond_c
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/CustomAlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/felicanetworks/mfs/view/CustomAlertController;->setView(Landroid/view/View;)V

    goto :goto_1
.end method

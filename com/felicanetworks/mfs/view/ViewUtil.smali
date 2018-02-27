.class public Lcom/felicanetworks/mfs/view/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfs/view/ViewUtil$LinkUrlSpan;,
        Lcom/felicanetworks/mfs/view/ViewUtil$ClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method public static replaceDisclamerLink(Lcom/felicanetworks/mfslib/MfsAppContext;Ljava/lang/String;Lcom/felicanetworks/mfs/view/ViewUtil$ClickListener;)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "context"    # Lcom/felicanetworks/mfslib/MfsAppContext;
    .param p1, "baseStr"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/felicanetworks/mfs/view/ViewUtil$ClickListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/sg/SgMgrException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v7, p0, Lcom/felicanetworks/mfslib/MfsAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    check-cast v7, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;

    invoke-virtual {v7}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->getDisclamerSearchString()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "serchStr":Ljava/lang/String;
    const/16 v7, 0x10

    invoke-static {v3, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 74
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 77
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 79
    iget-object v7, p0, Lcom/felicanetworks/mfslib/MfsAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const/16 v8, 0x44

    invoke-virtual {v7, v8}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 81
    .local v2, "repStr":Ljava/lang/String;
    iget-object v7, p0, Lcom/felicanetworks/mfslib/MfsAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const/16 v8, 0x45

    invoke-virtual {v7, v8}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 83
    .local v6, "urlStr":Ljava/lang/String;
    new-instance v5, Lcom/felicanetworks/mfs/view/ViewUtil$LinkUrlSpan;

    invoke-direct {v5, v6, p2}, Lcom/felicanetworks/mfs/view/ViewUtil$LinkUrlSpan;-><init>(Ljava/lang/String;Lcom/felicanetworks/mfs/view/ViewUtil$ClickListener;)V

    .line 85
    .local v5, "urlSpan":Lcom/felicanetworks/mfs/view/ViewUtil$LinkUrlSpan;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 86
    .local v4, "spannable":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v4, v7, v2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    const/16 v9, 0x21

    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 91
    .end local v2    # "repStr":Ljava/lang/String;
    .end local v4    # "spannable":Landroid/text/SpannableStringBuilder;
    .end local v5    # "urlSpan":Lcom/felicanetworks/mfs/view/ViewUtil$LinkUrlSpan;
    .end local v6    # "urlStr":Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static showBrowser(Lcom/felicanetworks/mfslib/MfsAppContext;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Lcom/felicanetworks/mfslib/MfsAppContext;
    .param p1, "urlStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfslib/launch/AppLauncherException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/felicanetworks/mfslib/launch/AppLauncher;

    invoke-direct {v0, p0, p1}, Lcom/felicanetworks/mfslib/launch/AppLauncher;-><init>(Lcom/felicanetworks/mfslib/MfsAppContext;Ljava/lang/String;)V

    .line 50
    .local v0, "ap":Lcom/felicanetworks/mfslib/launch/AppLauncher;
    invoke-virtual {v0}, Lcom/felicanetworks/mfslib/launch/AppLauncher;->startApplication()V

    .line 51
    return-void
.end method

.method public static toString(Lcom/felicanetworks/cmnview/ViewLayer;)Ljava/lang/String;
    .locals 3
    .param p0, "viewLayer"    # Lcom/felicanetworks/cmnview/ViewLayer;

    .prologue
    .line 139
    if-nez p0, :cond_0

    const-string v1, "null"

    .line 155
    :goto_0
    return-object v1

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v1, p0, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v1, p0, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v1, p0, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    if-nez v1, :cond_1

    .line 146
    const-string v1, ",null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :goto_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    iget-object v2, p0, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    if-ne v1, v2, :cond_2

    .line 148
    const-string v1, ",window"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    iget-object v2, p0, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    if-ne v1, v2, :cond_3

    .line 150
    const-string v1, ",dialog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 152
    :cond_3
    const-string v1, ",unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

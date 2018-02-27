.class public Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;
.super Ljava/lang/Object;
.source "Msg1Btn1DialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayInfo"
.end annotation


# instance fields
.field public button1Id:Ljava/lang/Integer;

.field public button2Id:Ljava/lang/Integer;

.field public layoutId:I

.field public message1Id:Ljava/lang/Integer;

.field public message1Str:Ljava/lang/String;

.field public message2Id:Ljava/lang/Integer;

.field public message2Str:Ljava/lang/String;

.field public titleIconId:Ljava/lang/Integer;

.field public titleMsgId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->layoutId:I

    return-void
.end method

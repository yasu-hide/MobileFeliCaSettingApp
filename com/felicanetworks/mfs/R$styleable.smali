.class public final Lcom/felicanetworks/mfs/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfs/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CustomAlertDialog:[I

.field public static final CustomAlertDialog_bottomBright:I = 0x7

.field public static final CustomAlertDialog_bottomDark:I = 0x3

.field public static final CustomAlertDialog_bottomMedium:I = 0x8

.field public static final CustomAlertDialog_centerBright:I = 0x6

.field public static final CustomAlertDialog_centerDark:I = 0x2

.field public static final CustomAlertDialog_centerMedium:I = 0x9

.field public static final CustomAlertDialog_fullBright:I = 0x4

.field public static final CustomAlertDialog_fullDark:I = 0x0

.field public static final CustomAlertDialog_topBright:I = 0x5

.field public static final CustomAlertDialog_topDark:I = 0x1

.field public static final Theme:[I

.field public static final Theme_BkgColor:I = 0x0

.field public static final Theme_DialogBkg:I = 0x1

.field public static final Theme_DialogButton:I = 0xa

.field public static final Theme_DialogDivider:I = 0xc

.field public static final Theme_ProgressDrawableMain:I = 0xe

.field public static final Theme_ScrollViewStyleDialog:I = 0xb

.field public static final Theme_TextMain12:I = 0x2

.field public static final Theme_TextMain14:I = 0x3

.field public static final Theme_TextMain16:I = 0x4

.field public static final Theme_TextMain20:I = 0x5

.field public static final Theme_TextSub16:I = 0x6

.field public static final Theme_TextSub16_link:I = 0x7

.field public static final Theme_TextSub18:I = 0x8

.field public static final Theme_TextSub20:I = 0x9

.field public static final Theme_WidgetCustomInverse:I = 0xd


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 492
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/felicanetworks/mfs/R$styleable;->CustomAlertDialog:[I

    .line 655
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/felicanetworks/mfs/R$styleable;->Theme:[I

    return-void

    .line 492
    nop

    :array_0
    .array-data 4
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
        0x7f010014
        0x7f010015
        0x7f010016
        0x7f010017
        0x7f010018
        0x7f010019
    .end array-data

    .line 655
    :array_1
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

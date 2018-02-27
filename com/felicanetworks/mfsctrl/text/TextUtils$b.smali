.class public Lcom/felicanetworks/mfsctrl/text/TextUtils$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfsctrl/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:[B

.field final synthetic e:Lcom/felicanetworks/mfsctrl/text/TextUtils;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfsctrl/text/TextUtils;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$b;->e:Lcom/felicanetworks/mfsctrl/text/TextUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$b;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$b;->d:[B

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InitilizeInfo is Illegal Format."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-object v1, v0, v5

    invoke-static {v1}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkAlphaNumberFormat(Ljava/lang/String;)V

    aget-object v1, v0, v5

    const/16 v2, 0x8

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkByteLength(Ljava/lang/String;IZ)V

    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkAlphaNumberFormat(Ljava/lang/String;)V

    aget-object v1, v0, v3

    invoke-static {v1, v4, v3}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkByteLength(Ljava/lang/String;IZ)V

    aget-object v1, v0, v4

    invoke-static {v1}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkHexNumberFormat(Ljava/lang/String;)V

    aget-object v1, v0, v4

    const/4 v2, 0x4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkByteLength(Ljava/lang/String;IZ)V

    aget-object v1, v0, v6

    invoke-static {v1}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkHexNumberFormat(Ljava/lang/String;)V

    aget-object v1, v0, v5

    iput-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$b;->a:Ljava/lang/String;

    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$b;->b:Ljava/lang/String;

    aget-object v1, v0, v4

    iput-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$b;->c:Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-direct {p0, v0}, Lcom/felicanetworks/mfsctrl/text/TextUtils$b;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$b;->d:[B

    return-void
.end method

.method private a(Ljava/lang/String;)[B
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v0, 0x1

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

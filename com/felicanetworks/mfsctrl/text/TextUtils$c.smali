.class Lcom/felicanetworks/mfsctrl/text/TextUtils$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfsctrl/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public a:[B

.field public b:[B

.field final synthetic c:Lcom/felicanetworks/mfsctrl/text/TextUtils;


# direct methods
.method private constructor <init>(Lcom/felicanetworks/mfsctrl/text/TextUtils;)V
    .locals 2

    const/16 v1, 0x10

    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$c;->c:Lcom/felicanetworks/mfsctrl/text/TextUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$c;->a:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$c;->b:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/felicanetworks/mfsctrl/text/TextUtils;Lcom/felicanetworks/mfsctrl/text/TextUtils$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/felicanetworks/mfsctrl/text/TextUtils$c;-><init>(Lcom/felicanetworks/mfsctrl/text/TextUtils;)V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$c;->a:[B

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$c;->a:[B

    array-length v1, v1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$c;->a:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$c;->b:[B

    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$c;->b:[B

    array-length v2, v2

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

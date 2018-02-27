.class public Lcom/felicanetworks/mfsctrl/text/TextUtils$a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfsctrl/text/TextUtils$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field final synthetic b:Lcom/felicanetworks/mfsctrl/text/TextUtils$a;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/mfsctrl/text/TextUtils$a;)V
    .locals 1

    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$b;->b:Lcom/felicanetworks/mfsctrl/text/TextUtils$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "td="

    return-object v0
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Length is wrong."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$b;->a:Ljava/lang/String;

    return-object v0
.end method

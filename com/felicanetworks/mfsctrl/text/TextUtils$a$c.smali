.class public Lcom/felicanetworks/mfsctrl/text/TextUtils$a$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfsctrl/text/TextUtils$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field final synthetic b:Lcom/felicanetworks/mfsctrl/text/TextUtils$a;

.field private final c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/mfsctrl/text/TextUtils$a;)V
    .locals 1

    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$c;->b:Lcom/felicanetworks/mfsctrl/text/TextUtils$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sg="

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$c;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "sg="

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$c;->a:Ljava/lang/String;

    return-object v0
.end method

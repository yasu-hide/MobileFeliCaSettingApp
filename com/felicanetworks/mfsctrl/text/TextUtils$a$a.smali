.class public Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfsctrl/text/TextUtils$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field final synthetic j:Lcom/felicanetworks/mfsctrl/text/TextUtils$a;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/mfsctrl/text/TextUtils$a;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->j:Lcom/felicanetworks/mfsctrl/text/TextUtils$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "hd="

    return-object v0
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Length is wrong."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x7a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "41"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/felicanetworks/mfsctrl/text/TextUtils$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfsctrl/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfsctrl/text/TextUtils$a$c;,
        Lcom/felicanetworks/mfsctrl/text/TextUtils$a$b;,
        Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;
    }
.end annotation


# instance fields
.field public a:[B

.field final synthetic b:Lcom/felicanetworks/mfsctrl/text/TextUtils;

.field private c:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;

.field private d:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$b;

.field private e:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$c;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/mfsctrl/text/TextUtils;)V
    .locals 1

    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->b:Lcom/felicanetworks/mfsctrl/text/TextUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;

    invoke-direct {v0, p0}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;-><init>(Lcom/felicanetworks/mfsctrl/text/TextUtils$a;)V

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->c:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;

    new-instance v0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$b;

    invoke-direct {v0, p0}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$b;-><init>(Lcom/felicanetworks/mfsctrl/text/TextUtils$a;)V

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->d:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$b;

    new-instance v0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$c;

    invoke-direct {v0, p0}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$c;-><init>(Lcom/felicanetworks/mfsctrl/text/TextUtils$a;)V

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->e:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->a:[B

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->c:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;

    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->b()V

    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->d:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$b;

    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$b;->b()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->c:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;

    invoke-virtual {v1}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->d:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$b;

    invoke-virtual {v1}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->e:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$c;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->a:[B

    invoke-virtual {p0, v0, v2}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->a([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->binToHexString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$c;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/felicanetworks/mfsctrl/data/ChipMgrInfoData;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->c:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;

    iget-object v1, p1, Lcom/felicanetworks/mfsctrl/data/ChipMgrInfoData;->idm:[B

    invoke-static {v1}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->binToHexString([B)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->c:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;

    iget-object v1, p1, Lcom/felicanetworks/mfsctrl/data/ChipMgrInfoData;->icCode:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->c:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;

    iget-object v1, p1, Lcom/felicanetworks/mfsctrl/data/ChipMgrInfoData;->container:[B

    invoke-static {v1}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->binToHexString([B)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/felicanetworks/mfsctrl/text/TextUtils$b;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->c:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;

    iget-object v1, p1, Lcom/felicanetworks/mfsctrl/text/TextUtils$b;->a:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->c:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;

    iget-object v1, p1, Lcom/felicanetworks/mfsctrl/text/TextUtils$b;->b:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->c:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;

    iget-object v1, p1, Lcom/felicanetworks/mfsctrl/text/TextUtils$b;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/felicanetworks/mfsctrl/text/TextUtils$b;->d:[B

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->a:[B

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->c:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;Ljava/lang/String;I)V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Lcom/felicanetworks/cmnlib/util/DateFormatter;

    const-string v2, "yyyyMMddHHmm"

    invoke-direct {v1, v2, p2}, Lcom/felicanetworks/cmnlib/util/DateFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->c:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;

    invoke-virtual {v1, p1}, Lcom/felicanetworks/cmnlib/util/DateFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->c:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;

    invoke-virtual {v1, v0}, Lcom/felicanetworks/cmnlib/util/DateFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->e:Ljava/lang/String;

    return-void
.end method

.method protected a([B[B)[B
    .locals 3

    const-string v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, p2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, v3, :cond_0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->d:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$b;->a:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->c:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;

    invoke-virtual {v1}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->c:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;

    invoke-virtual {v1}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->d:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$b;

    invoke-virtual {v1}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->d:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$b;

    invoke-virtual {v1}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->e:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$c;

    invoke-virtual {v1}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->e:Lcom/felicanetworks/mfsctrl/text/TextUtils$a$c;

    invoke-virtual {v1}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a$c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

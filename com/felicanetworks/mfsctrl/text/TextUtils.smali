.class public Lcom/felicanetworks/mfsctrl/text/TextUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfsctrl/text/TextUtils$1;,
        Lcom/felicanetworks/mfsctrl/text/TextUtils$c;,
        Lcom/felicanetworks/mfsctrl/text/TextUtils$a;,
        Lcom/felicanetworks/mfsctrl/text/TextUtils$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/felicanetworks/mfslib/MfsAppContext;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfslib/MfsAppContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "E0680410835BCB25"

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils;->b:Lcom/felicanetworks/mfslib/MfsAppContext;

    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils;->b:Lcom/felicanetworks/mfslib/MfsAppContext;

    return-void
.end method

.method private a([B)[B
    .locals 1

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method private a([B[B[B)[B
    .locals 4

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a([B[B)[B
    .locals 2

    new-instance v0, Lcom/felicanetworks/mfsctrl/text/TextUtils$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/felicanetworks/mfsctrl/text/TextUtils$c;-><init>(Lcom/felicanetworks/mfsctrl/text/TextUtils;Lcom/felicanetworks/mfsctrl/text/TextUtils$1;)V

    invoke-direct {p0, p2}, Lcom/felicanetworks/mfsctrl/text/TextUtils;->a([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfsctrl/text/TextUtils$c;->a([B)V

    iget-object v1, v0, Lcom/felicanetworks/mfsctrl/text/TextUtils$c;->b:[B

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/text/TextUtils$c;->a:[B

    invoke-direct {p0, p1, v1, v0}, Lcom/felicanetworks/mfsctrl/text/TextUtils;->a([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public createTicket([BLjava/lang/String;ILcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;)[B
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;

    invoke-direct {v2, p0}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;-><init>(Lcom/felicanetworks/mfsctrl/text/TextUtils;)V

    invoke-virtual {p4}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->getChipMgrInfo()Lcom/felicanetworks/mfsctrl/data/ChipMgrInfoData;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->a(Lcom/felicanetworks/mfsctrl/data/ChipMgrInfoData;)V

    invoke-static {}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->getSystemTime()Ljava/util/Date;

    move-result-object v3

    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils;->b:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const v4, 0x1000018

    invoke-virtual {v0, v4}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0, p3}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->a(Ljava/util/Date;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/text/TextUtils;->b:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->androidContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    const-string v3, "E0680410835BCB25"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/felicanetworks/mfsctrl/text/TextUtils;->a([B[B)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v3, Lcom/felicanetworks/mfsctrl/text/TextUtils$b;

    invoke-direct {v3, p0, v0}, Lcom/felicanetworks/mfsctrl/text/TextUtils$b;-><init>(Lcom/felicanetworks/mfsctrl/text/TextUtils;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->a(Lcom/felicanetworks/mfsctrl/text/TextUtils$b;)V

    invoke-virtual {v2, p2}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->a()V

    invoke-virtual {v2}, Lcom/felicanetworks/mfsctrl/text/TextUtils$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.class Lcom/felicanetworks/mfc/Block$1;
.super Ljava/lang/Object;
.source "Block.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/Block;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/felicanetworks/mfc/Block;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/felicanetworks/mfc/Block;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 266
    const-string v0, "%s : in = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 267
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 268
    new-instance v0, Lcom/felicanetworks/mfc/Block;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/felicanetworks/mfc/Block;-><init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/Block;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/Block$1;->createFromParcel(Landroid/os/Parcel;)Lcom/felicanetworks/mfc/Block;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/felicanetworks/mfc/Block;
    .locals 6
    .param p1, "size"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 272
    const-string v0, "%s : size = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 273
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 274
    new-array v0, p1, [Lcom/felicanetworks/mfc/Block;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/Block$1;->newArray(I)[Lcom/felicanetworks/mfc/Block;

    move-result-object v0

    return-object v0
.end method

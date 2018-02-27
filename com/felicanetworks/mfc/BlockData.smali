.class public Lcom/felicanetworks/mfc/BlockData;
.super Ljava/lang/Object;
.source "BlockData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/BlockData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private block:Lcom/felicanetworks/mfc/Block;

.field private data:Lcom/felicanetworks/mfc/Data;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/felicanetworks/mfc/BlockData$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/BlockData$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/BlockData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const-string v0, "%s : in = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/BlockData;->readFromParcel(Landroid/os/Parcel;)V

    .line 173
    const-string v0, "999"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/BlockData;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/BlockData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/felicanetworks/mfc/Block;Lcom/felicanetworks/mfc/Data;)V
    .locals 0
    .param p1, "block"    # Lcom/felicanetworks/mfc/Block;
    .param p2, "data"    # Lcom/felicanetworks/mfc/Data;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/felicanetworks/mfc/BlockData;->set(Lcom/felicanetworks/mfc/Block;Lcom/felicanetworks/mfc/Data;)V

    .line 44
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 156
    const-string v0, "%s : in = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 159
    const-class v0, Lcom/felicanetworks/mfc/Block;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/Block;

    iput-object v0, p0, Lcom/felicanetworks/mfc/BlockData;->block:Lcom/felicanetworks/mfc/Block;

    .line 160
    const-class v0, Lcom/felicanetworks/mfc/Data;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/Data;

    iput-object v0, p0, Lcom/felicanetworks/mfc/BlockData;->data:Lcom/felicanetworks/mfc/Data;

    .line 163
    const-string v0, "999"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 164
    return-void
.end method


# virtual methods
.method public checkFormat()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 212
    const-string v0, "000"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockData;->block:Lcom/felicanetworks/mfc/Block;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockData;->data:Lcom/felicanetworks/mfc/Data;

    if-nez v0, :cond_1

    .line 215
    :cond_0
    const/4 v0, 0x1

    const-string v1, "800"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockData;->block:Lcom/felicanetworks/mfc/Block;

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Block;->checkFormat()V

    .line 221
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockData;->data:Lcom/felicanetworks/mfc/Data;

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Data;->checkFormat()V

    .line 223
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/mfc/BlockData;->block:Lcom/felicanetworks/mfc/Block;

    iget-object v2, p0, Lcom/felicanetworks/mfc/BlockData;->data:Lcom/felicanetworks/mfc/Data;

    invoke-virtual {v0, v1, v2}, Lcom/felicanetworks/mfc/ServiceUtil;->checkBlockData(Lcom/felicanetworks/mfc/Block;Lcom/felicanetworks/mfc/Data;)V

    .line 224
    const-string v0, "999"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public getBlock()Lcom/felicanetworks/mfc/Block;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockData;->block:Lcom/felicanetworks/mfc/Block;

    return-object v0
.end method

.method public getData()Lcom/felicanetworks/mfc/Data;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockData;->data:Lcom/felicanetworks/mfc/Data;

    return-object v0
.end method

.method public set(Lcom/felicanetworks/mfc/Block;Lcom/felicanetworks/mfc/Data;)V
    .locals 1
    .param p1, "block"    # Lcom/felicanetworks/mfc/Block;
    .param p2, "data"    # Lcom/felicanetworks/mfc/Data;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/felicanetworks/mfc/ServiceUtil;->checkBlockData(Lcom/felicanetworks/mfc/Block;Lcom/felicanetworks/mfc/Data;)V

    .line 110
    iput-object p1, p0, Lcom/felicanetworks/mfc/BlockData;->block:Lcom/felicanetworks/mfc/Block;

    .line 111
    iput-object p2, p0, Lcom/felicanetworks/mfc/BlockData;->data:Lcom/felicanetworks/mfc/Data;

    .line 113
    return-void
.end method

.method public setBlock(Lcom/felicanetworks/mfc/Block;)V
    .locals 2
    .param p1, "block"    # Lcom/felicanetworks/mfc/Block;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/mfc/BlockData;->data:Lcom/felicanetworks/mfc/Data;

    invoke-virtual {v0, p1, v1}, Lcom/felicanetworks/mfc/ServiceUtil;->checkBlockData(Lcom/felicanetworks/mfc/Block;Lcom/felicanetworks/mfc/Data;)V

    .line 68
    iput-object p1, p0, Lcom/felicanetworks/mfc/BlockData;->block:Lcom/felicanetworks/mfc/Block;

    .line 70
    return-void
.end method

.method public setData(Lcom/felicanetworks/mfc/Data;)V
    .locals 2
    .param p1, "data"    # Lcom/felicanetworks/mfc/Data;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/mfc/BlockData;->block:Lcom/felicanetworks/mfc/Block;

    invoke-virtual {v0, v1, p1}, Lcom/felicanetworks/mfc/ServiceUtil;->checkBlockData(Lcom/felicanetworks/mfc/Block;Lcom/felicanetworks/mfc/Data;)V

    .line 94
    iput-object p1, p0, Lcom/felicanetworks/mfc/BlockData;->data:Lcom/felicanetworks/mfc/Data;

    .line 96
    return-void
.end method

.method setWithoutValidation(Lcom/felicanetworks/mfc/Block;Lcom/felicanetworks/mfc/Data;)V
    .locals 0
    .param p1, "block"    # Lcom/felicanetworks/mfc/Block;
    .param p2, "data"    # Lcom/felicanetworks/mfc/Data;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/felicanetworks/mfc/BlockData;->block:Lcom/felicanetworks/mfc/Block;

    .line 125
    iput-object p2, p0, Lcom/felicanetworks/mfc/BlockData;->data:Lcom/felicanetworks/mfc/Data;

    .line 127
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 195
    const-string v0, "%s : out = %s, flag = %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockData;->block:Lcom/felicanetworks/mfc/Block;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 199
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockData;->data:Lcom/felicanetworks/mfc/Data;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 201
    const-string v0, "999"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 202
    return-void
.end method

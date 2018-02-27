.class public Lcom/felicanetworks/mfc/BlockDataList;
.super Ljava/lang/Object;
.source "BlockDataList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/BlockDataList;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXC_INVALID_BLOCKDATA:Ljava/lang/String; = "The specified BlockData is null."

.field private static final EXC_MAX_SIZE:Ljava/lang/String; = "The size of this list exceeds the maximum value."

.field public static final MAX_SIZE:I = 0xa


# instance fields
.field private blockDataList:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/felicanetworks/mfc/BlockDataList$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/BlockDataList$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/BlockDataList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfc/BlockDataList;->blockDataList:Ljava/util/Vector;

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    const-string v0, "%s : in = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 228
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfc/BlockDataList;->blockDataList:Ljava/util/Vector;

    .line 229
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/BlockDataList;->readFromParcel(Landroid/os/Parcel;)V

    .line 230
    const-string v0, "999"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 231
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/BlockDataList;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/BlockDataList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 211
    const-string v0, "%s : in = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockDataList;->blockDataList:Ljava/util/Vector;

    const-class v1, Lcom/felicanetworks/mfc/BlockData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 218
    const/4 v0, 0x7

    const-string v1, "001 blockDataList len=%d"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/felicanetworks/mfc/BlockDataList;->blockDataList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 219
    const-string v0, "999"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 220
    return-void
.end method


# virtual methods
.method public add(Lcom/felicanetworks/mfc/BlockData;)I
    .locals 2
    .param p1, "blockData"    # Lcom/felicanetworks/mfc/BlockData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified BlockData is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockDataList;->blockDataList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The size of this list exceeds the maximum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockDataList;->blockDataList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockDataList;->blockDataList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public add(ILcom/felicanetworks/mfc/BlockData;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "blockData"    # Lcom/felicanetworks/mfc/BlockData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 91
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockDataList;->blockDataList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 94
    :cond_1
    if-nez p2, :cond_2

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified BlockData is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockDataList;->blockDataList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The size of this list exceeds the maximum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockDataList;->blockDataList:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 102
    return-void
.end method

.method public checkFormat()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 268
    const-string v2, "000"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 269
    const/4 v1, 0x0

    .line 273
    .local v1, "cnt":I
    iget-object v2, p0, Lcom/felicanetworks/mfc/BlockDataList;->blockDataList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v2, v7, :cond_0

    .line 274
    const-string v2, "%s blockDataList = %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "800"

    aput-object v4, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v6, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 275
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 279
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/felicanetworks/mfc/BlockDataList;->blockDataList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 287
    const-string v2, "999"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 288
    return-void

    .line 280
    :cond_1
    iget-object v2, p0, Lcom/felicanetworks/mfc/BlockDataList;->blockDataList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/BlockData;

    .line 281
    .local v0, "blockData":Lcom/felicanetworks/mfc/BlockData;
    if-nez v0, :cond_2

    .line 282
    const-string v2, "801"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v6, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 283
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 285
    :cond_2
    invoke-virtual {v0}, Lcom/felicanetworks/mfc/BlockData;->checkFormat()V

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockDataList;->blockDataList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 149
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Lcom/felicanetworks/mfc/BlockData;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v1, p0, Lcom/felicanetworks/mfc/BlockDataList;->blockDataList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/BlockData;

    .line 119
    .local v0, "blockData":Lcom/felicanetworks/mfc/BlockData;
    return-object v0
.end method

.method public remove(I)Lcom/felicanetworks/mfc/BlockData;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v1, p0, Lcom/felicanetworks/mfc/BlockDataList;->blockDataList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/BlockData;

    .line 136
    .local v0, "blockData":Lcom/felicanetworks/mfc/BlockData;
    iget-object v1, p0, Lcom/felicanetworks/mfc/BlockDataList;->blockDataList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 138
    return-object v0
.end method

.method set(ILcom/felicanetworks/mfc/BlockData;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "blockData"    # Lcom/felicanetworks/mfc/BlockData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 175
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockDataList;->blockDataList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 178
    :cond_1
    if-nez p2, :cond_2

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified BlockData is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockDataList;->blockDataList:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 182
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockDataList;->blockDataList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 252
    const-string v0, "%s : out = %s, flag = %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 253
    const/4 v0, 0x6

    const-string v1, "001 blockDataList len=%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/felicanetworks/mfc/BlockDataList;->blockDataList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockDataList;->blockDataList:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 258
    const-string v0, "999"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 259
    return-void
.end method

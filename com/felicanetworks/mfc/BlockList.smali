.class public Lcom/felicanetworks/mfc/BlockList;
.super Ljava/lang/Object;
.source "BlockList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/BlockList;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXC_MAX_SIZE:Ljava/lang/String; = "The size of this list exceeds the maximum value."

.field public static final MAX_SIZE:I = 0xe


# instance fields
.field private blockList:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lcom/felicanetworks/mfc/BlockList$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/BlockList$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/BlockList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    const-string v0, "%s : in = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 243
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    .line 244
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/BlockList;->readFromParcel(Landroid/os/Parcel;)V

    .line 245
    const-string v0, "999"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 246
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/BlockList;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/BlockList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 226
    const-string v0, "%s : in = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    aput-object p1, v1, v5

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    const-class v1, Lcom/felicanetworks/mfc/Block;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 233
    const-string v0, "001 blockList len=%d"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 234
    const-string v0, "999"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 235
    return-void
.end method


# virtual methods
.method public add(Lcom/felicanetworks/mfc/Block;)I
    .locals 2
    .param p1, "block"    # Lcom/felicanetworks/mfc/Block;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/felicanetworks/mfc/BlockList;->add(Lcom/felicanetworks/mfc/Block;Z)I

    move-result v0

    .line 65
    .local v0, "index":I
    return v0
.end method

.method add(Lcom/felicanetworks/mfc/Block;Z)I
    .locals 2
    .param p1, "block"    # Lcom/felicanetworks/mfc/Block;
    .param p2, "checkType"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/felicanetworks/mfc/ServiceUtil;->checkBlock(Lcom/felicanetworks/mfc/Block;Z)V

    .line 84
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The size of this list exceeds the maximum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public add(ILcom/felicanetworks/mfc/Block;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "block"    # Lcom/felicanetworks/mfc/Block;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/felicanetworks/mfc/BlockList;->add(ILcom/felicanetworks/mfc/Block;Z)V

    .line 109
    return-void
.end method

.method add(ILcom/felicanetworks/mfc/Block;Z)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "block"    # Lcom/felicanetworks/mfc/Block;
    .param p3, "checkType"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 129
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_2

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The size of this list exceeds the maximum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_2
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/felicanetworks/mfc/ServiceUtil;->checkBlock(Lcom/felicanetworks/mfc/Block;Z)V

    .line 136
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 137
    return-void
.end method

.method public checkFormat()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 283
    const-string v2, "000"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 285
    const/4 v1, 0x0

    .line 289
    .local v1, "cnt":I
    iget-object v2, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/16 v3, 0xe

    if-le v2, v3, :cond_0

    .line 290
    const-string v2, "800 blockList.size() is too large %d"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 291
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 295
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 305
    const-string v2, "999"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 306
    return-void

    .line 296
    :cond_1
    iget-object v2, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/Block;

    .line 297
    .local v0, "block":Lcom/felicanetworks/mfc/Block;
    if-nez v0, :cond_2

    .line 298
    const-string v2, "801 blockList[%d] is null"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 299
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 301
    :cond_2
    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Block;->checkFormat()V

    .line 302
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lcom/felicanetworks/mfc/ServiceUtil;->checkBlock(Lcom/felicanetworks/mfc/Block;Z)V

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 184
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Lcom/felicanetworks/mfc/Block;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v1, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/Block;

    .line 154
    .local v0, "block":Lcom/felicanetworks/mfc/Block;
    return-object v0
.end method

.method public remove(I)Lcom/felicanetworks/mfc/Block;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v1, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/Block;

    .line 171
    .local v0, "block":Lcom/felicanetworks/mfc/Block;
    iget-object v1, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 173
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 194
    iget-object v1, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 196
    .local v0, "size":I
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

    .line 267
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

    .line 268
    const/4 v0, 0x6

    const-string v1, "001 blockList len=%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 273
    const-string v0, "999"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 274
    return-void
.end method

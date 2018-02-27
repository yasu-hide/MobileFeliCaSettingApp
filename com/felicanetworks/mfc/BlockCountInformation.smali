.class public Lcom/felicanetworks/mfc/BlockCountInformation;
.super Ljava/lang/Object;
.source "BlockCountInformation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/BlockCountInformation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected assignedBlocks:I

.field protected emptyBlocks:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/felicanetworks/mfc/BlockCountInformation$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/BlockCountInformation$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/BlockCountInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "assignedBlocks"    # I
    .param p2, "emptyBlocks"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const v0, 0xffff

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 46
    :cond_1
    if-ltz p2, :cond_2

    if-le p2, v0, :cond_3

    .line 47
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 50
    :cond_3
    iput p1, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->assignedBlocks:I

    .line 51
    iput p2, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->emptyBlocks:I

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const-string v0, "%s : in = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000 mfc/BlockCountInformation"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/BlockCountInformation;->readFromParcel(Landroid/os/Parcel;)V

    .line 151
    const-string v0, "999 mfc/BlockCountInformation"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/BlockCountInformation;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/BlockCountInformation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public getAssignedBlocks()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->assignedBlocks:I

    return v0
.end method

.method public getFreeBlocks()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->emptyBlocks:I

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    const/4 v0, 0x6

    const-string v1, "%s : in = %s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "000 readFromParcel"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->assignedBlocks:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->emptyBlocks:I

    .line 140
    const-string v0, "001 readFromParcel assignedBlocks=%d emptyBlocks=%d"

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->assignedBlocks:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->emptyBlocks:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 141
    const-string v0, "999 readFromParcel"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public setAssignedBlocks(I)V
    .locals 1
    .param p1, "assignedBlocks"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 73
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 77
    :cond_1
    iput p1, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->assignedBlocks:I

    .line 79
    return-void
.end method

.method public setFreeBlocks(I)V
    .locals 1
    .param p1, "emptyBlocks"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 100
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 104
    :cond_1
    iput p1, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->emptyBlocks:I

    .line 106
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 173
    const/4 v0, 0x4

    const-string v1, "%s : out = %s, flag = %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "000 writeToParcel"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 174
    const-string v0, "001 writeToParcel assignedBlocks=%d emptyBlocks=%d"

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->assignedBlocks:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->emptyBlocks:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget v0, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->assignedBlocks:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->emptyBlocks:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    const-string v0, "999 writeToParcel"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 180
    return-void
.end method

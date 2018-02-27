.class public Lcom/felicanetworks/mfc/CyclicData;
.super Lcom/felicanetworks/mfc/Data;
.source "CyclicData.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/CyclicData;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE:I = 0x2


# instance fields
.field private bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/felicanetworks/mfc/CyclicData$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/CyclicData$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/CyclicData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 135
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 136
    const-string v0, "%s : in = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000 mfc/CyclicData"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/CyclicData;->readFromParcel(Landroid/os/Parcel;)V

    .line 138
    const-string v0, "999 mfc/CyclicData"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/CyclicData;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/CyclicData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 42
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/CyclicData;->setBytes([B)V

    .line 44
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 112
    const-string v1, "%s : in = %s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "000 readFromParcel"

    aput-object v3, v2, v5

    aput-object p1, v2, v4

    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/CyclicData;->getBytesLength()I

    move-result v1

    new-array v0, v1, [B

    .line 118
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfc/CyclicData;->setBytes([B)V

    .line 126
    const-string v1, "001 readFromParcel bytes.length=%d bytes[]:%d %d %d ... %d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 127
    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aget-byte v3, v0, v5

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    aget-byte v3, v0, v4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    aget-byte v4, v0, v6

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    .line 126
    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 128
    const-string v1, "999 readFromParcel"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 129
    return-void
.end method


# virtual methods
.method public checkFormat()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 177
    const-string v0, "000 checkFormat"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/felicanetworks/mfc/CyclicData;->bytes:[B

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfc/CyclicData;->checkBytes([B)V

    .line 179
    const-string v0, "999 checkFormat"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/felicanetworks/mfc/CyclicData;->bytes:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x2

    return v0
.end method

.method public setBytes([B)V
    .locals 0
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/CyclicData;->checkBytes([B)V

    .line 81
    iput-object p1, p0, Lcom/felicanetworks/mfc/CyclicData;->bytes:[B

    .line 83
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 9
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 160
    const-string v0, "%s : out = %s, flag = %d"

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "000 writeToParcel"

    aput-object v2, v1, v5

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 161
    const/4 v0, 0x6

    const-string v1, "001 writeToParcel bytes.length=%d bytes[]:%d %d %d ... %d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 162
    iget-object v3, p0, Lcom/felicanetworks/mfc/CyclicData;->bytes:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/felicanetworks/mfc/CyclicData;->bytes:[B

    aget-byte v3, v3, v5

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/felicanetworks/mfc/CyclicData;->bytes:[B

    aget-byte v3, v3, v4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/felicanetworks/mfc/CyclicData;->bytes:[B

    aget-byte v3, v3, v6

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/felicanetworks/mfc/CyclicData;->bytes:[B

    iget-object v4, p0, Lcom/felicanetworks/mfc/CyclicData;->bytes:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-byte v3, v3, v4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v7

    .line 161
    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/felicanetworks/mfc/CyclicData;->bytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 167
    const-string v0, "999 writeToParcel"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 168
    return-void
.end method

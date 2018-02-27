.class public Lcom/felicanetworks/mfc/RandomData;
.super Lcom/felicanetworks/mfc/Data;
.source "RandomData.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/RandomData;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE:I = 0x1


# instance fields
.field private bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/felicanetworks/mfc/RandomData$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/RandomData$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/RandomData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 129
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 130
    const-string v0, "%s : in = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000 mfc/RandomData"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/RandomData;->readFromParcel(Landroid/os/Parcel;)V

    .line 132
    const-string v0, "999 mfc/RandomData"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/RandomData;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/RandomData;-><init>(Landroid/os/Parcel;)V

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
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/RandomData;->setBytes([B)V

    .line 44
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x6

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 112
    const-string v0, "%s : in = %s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 readFromParcel"

    aput-object v2, v1, v5

    aput-object p1, v1, v3

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/RandomData;->getBytesLength()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    .line 118
    iget-object v0, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 120
    const-string v0, "001 readFromParcel bytes.length=%d bytes[]:%d %d %d ... %d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 121
    iget-object v2, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    aget-byte v2, v2, v5

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    aget-byte v3, v3, v4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    iget-object v4, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-byte v3, v3, v4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    .line 120
    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 122
    const-string v0, "999 readFromParcel"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 123
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

    .line 171
    const-string v0, "000 checkFormat"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfc/RandomData;->checkBytes([B)V

    .line 173
    const-string v0, "999 checkFormat"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

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
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/RandomData;->checkBytes([B)V

    .line 81
    iput-object p1, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

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

    .line 154
    const-string v0, "%s : out = %s, flag = %d"

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "000 writeToParcel"

    aput-object v2, v1, v5

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 155
    const/4 v0, 0x6

    const-string v1, "001 writeToParcel bytes.length=%d bytes[]:%d %d %d ... %d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 156
    iget-object v3, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    aget-byte v3, v3, v5

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    aget-byte v3, v3, v4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    aget-byte v3, v3, v6

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    iget-object v4, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-byte v3, v3, v4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v7

    .line 155
    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 161
    const-string v0, "999 writeToParcel"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 162
    return-void
.end method

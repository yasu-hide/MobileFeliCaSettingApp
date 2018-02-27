.class public Lcom/felicanetworks/mfc/PurseCashBackData;
.super Lcom/felicanetworks/mfc/Data;
.source "PurseCashBackData.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/PurseCashBackData;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXC_DATA:Ljava/lang/String; = "The value must be from 0 to 0xffffffff."

.field private static final EXC_EXEC_ID:Ljava/lang/String; = "The value must be from 0 to 0xffff."

.field private static final MAX_DATA:J = 0xffffffffL

.field private static final MAX_EXEC_ID:I = 0xffff

.field private static final MIN_DATA:J = 0x0L

.field private static final MIN_EXEC_ID:I = 0x0

.field public static final TYPE:I = 0x4


# instance fields
.field private cashBackData:J

.field private execID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/felicanetworks/mfc/PurseCashBackData$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/PurseCashBackData$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/PurseCashBackData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0
    .param p1, "cashBackData"    # J
    .param p3, "execID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/felicanetworks/mfc/PurseCashBackData;->setCashBackData(J)V

    .line 76
    invoke-virtual {p0, p3}, Lcom/felicanetworks/mfc/PurseCashBackData;->setExecID(I)V

    .line 78
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 195
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 196
    const-string v0, "%s : in = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000 mfc/PurseCashBackData"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PurseCashBackData;->readFromParcel(Landroid/os/Parcel;)V

    .line 198
    const-string v0, "999 mfc/PurseCashBackData"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/PurseCashBackData;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PurseCashBackData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 179
    const-string v0, "%s : in = %s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "000 readFromParcel"

    aput-object v2, v1, v4

    aput-object p1, v1, v6

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->cashBackData:J

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->execID:I

    .line 187
    const-string v0, "001 readFromParcel cashBackData=%d execID=%d"

    new-array v1, v3, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->cashBackData:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->execID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 188
    const-string v0, "999 readFromParcel"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 189
    return-void
.end method


# virtual methods
.method public checkFormat()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 237
    const-string v0, "000 checkFormat"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->cashBackData:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->cashBackData:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 239
    :cond_0
    const-string v0, "%s : cashBackData = %d"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "800 checkFormat"

    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->cashBackData:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    iget v0, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->execID:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->execID:I

    const v1, 0xffff

    if-le v0, v1, :cond_3

    .line 244
    :cond_2
    const-string v0, "%s : execID = %d"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "801 checkFormat"

    aput-object v2, v1, v4

    iget v2, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->execID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_3
    const-string v0, "999 checkFormat"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 248
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public getCashBackData()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->cashBackData:J

    return-wide v0
.end method

.method public getExecID()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->execID:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x4

    return v0
.end method

.method public setCashBackData(J)V
    .locals 2
    .param p1, "cashBackData"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 115
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    iput-wide p1, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->cashBackData:J

    .line 120
    return-void
.end method

.method public setExecID(I)V
    .locals 2
    .param p1, "execID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 145
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    iput p1, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->execID:I

    .line 150
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 220
    const-string v0, "%s : out = %s, flag = %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000 writeToParcel"

    aput-object v2, v1, v5

    aput-object p1, v1, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 223
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->cashBackData:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 224
    iget v0, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->execID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    const/4 v0, 0x6

    const-string v1, "001 writeToParcel cashBackData=%d execID=%d"

    new-array v2, v3, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->cashBackData:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->execID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 227
    const-string v0, "999 writeToParcel"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 228
    return-void
.end method

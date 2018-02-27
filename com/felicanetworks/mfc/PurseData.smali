.class public Lcom/felicanetworks/mfc/PurseData;
.super Lcom/felicanetworks/mfc/Data;
.source "PurseData.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/PurseData;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXC_DATA:Ljava/lang/String; = "The value must be from 0 to 0xffffffff."

.field private static final EXC_EXEC_ID:Ljava/lang/String; = "The value must be from 0 to 0xffff."

.field private static final EXC_LENGTH:Ljava/lang/String; = "The length must be 6."

.field private static final EXC_NULL:Ljava/lang/String; = "null is not allowed."

.field private static final MAX_DATA:J = 0xffffffffL

.field private static final MAX_EXEC_ID:I = 0xffff

.field private static final MIN_DATA:J = 0x0L

.field private static final MIN_EXEC_ID:I = 0x0

.field public static final TYPE:I = 0x3

.field private static final USERDATA_LENGTH:I = 0x6


# instance fields
.field private cashBackData:J

.field private execID:I

.field private purseData:J

.field private userData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 252
    new-instance v0, Lcom/felicanetworks/mfc/PurseData$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/PurseData$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/PurseData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    return-void
.end method

.method public constructor <init>(JJ[BI)V
    .locals 0
    .param p1, "purseData"    # J
    .param p3, "cashBackData"    # J
    .param p5, "userData"    # [B
    .param p6, "execID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/felicanetworks/mfc/PurseData;->setPurseData(J)V

    .line 104
    invoke-virtual {p0, p3, p4}, Lcom/felicanetworks/mfc/PurseData;->setCashBackData(J)V

    .line 105
    invoke-virtual {p0, p5}, Lcom/felicanetworks/mfc/PurseData;->setUserData([B)V

    .line 106
    invoke-virtual {p0, p6}, Lcom/felicanetworks/mfc/PurseData;->setExecID(I)V

    .line 108
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 294
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 295
    const-string v0, "%s : in = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 296
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PurseData;->readFromParcel(Landroid/os/Parcel;)V

    .line 297
    const-string v0, "999"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 298
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/PurseData;)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PurseData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x6

    .line 272
    const-string v0, "%s : in = %s"

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v5

    aput-object p1, v1, v6

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 275
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/felicanetworks/mfc/PurseData;->userData:[B

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/mfc/PurseData;->purseData:J

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/mfc/PurseData;->cashBackData:J

    .line 280
    iget-object v0, p0, Lcom/felicanetworks/mfc/PurseData;->userData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/PurseData;->execID:I

    .line 285
    const-string v0, "001 purseData=%d cashBackData=%d userData.length=%d execID=%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 286
    iget-wide v2, p0, Lcom/felicanetworks/mfc/PurseData;->purseData:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PurseData;->cashBackData:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/felicanetworks/mfc/PurseData;->userData:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x3

    iget v3, p0, Lcom/felicanetworks/mfc/PurseData;->execID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 285
    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 287
    const-string v0, "999"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 288
    return-void
.end method


# virtual methods
.method public checkFormat()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 339
    const-string v0, "000"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 340
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseData;->purseData:J

    cmp-long v0, v0, v8

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseData;->purseData:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 341
    :cond_0
    const-string v0, "%s : purseData = %d"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "800"

    aput-object v2, v1, v5

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PurseData;->purseData:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 342
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_1
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseData;->cashBackData:J

    cmp-long v0, v0, v8

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseData;->cashBackData:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 346
    :cond_2
    const-string v0, "%s : cashBackData = %d"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "801"

    aput-object v2, v1, v5

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PurseData;->cashBackData:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/felicanetworks/mfc/PurseData;->userData:[B

    if-nez v0, :cond_4

    .line 351
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "802"

    aput-object v2, v1, v5

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_4
    iget-object v0, p0, Lcom/felicanetworks/mfc/PurseData;->userData:[B

    array-length v0, v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    .line 354
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "803"

    aput-object v2, v1, v5

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length must be 6."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_5
    iget v0, p0, Lcom/felicanetworks/mfc/PurseData;->execID:I

    if-ltz v0, :cond_6

    iget v0, p0, Lcom/felicanetworks/mfc/PurseData;->execID:I

    const v1, 0xffff

    if-le v0, v1, :cond_7

    .line 359
    :cond_6
    const-string v0, "%s : execID = %d"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "804"

    aput-object v2, v1, v5

    iget v2, p0, Lcom/felicanetworks/mfc/PurseData;->execID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 360
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_7
    const-string v0, "999"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 363
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public getCashBackData()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseData;->cashBackData:J

    return-wide v0
.end method

.method public getExecID()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/felicanetworks/mfc/PurseData;->execID:I

    return v0
.end method

.method public getPurseData()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseData;->purseData:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x3

    return v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/felicanetworks/mfc/PurseData;->userData:[B

    return-object v0
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
    .line 176
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    iput-wide p1, p0, Lcom/felicanetworks/mfc/PurseData;->cashBackData:J

    .line 181
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
    .line 238
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_1
    iput p1, p0, Lcom/felicanetworks/mfc/PurseData;->execID:I

    .line 243
    return-void
.end method

.method public setPurseData(J)V
    .locals 2
    .param p1, "purseData"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 145
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    iput-wide p1, p0, Lcom/felicanetworks/mfc/PurseData;->purseData:J

    .line 150
    return-void
.end method

.method public setUserData([B)V
    .locals 2
    .param p1, "userData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 206
    if-nez p1, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    array-length v0, p1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length must be 6."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_1
    iput-object p1, p0, Lcom/felicanetworks/mfc/PurseData;->userData:[B

    .line 213
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 10
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 319
    const-string v0, "%s : out = %s, flag = %d"

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v5

    aput-object p1, v1, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 320
    const/4 v0, 0x6

    const-string v1, "001 purseData=%d cashBackData=%d userData.length=%d execID=%d"

    new-array v2, v6, [Ljava/lang/Object;

    .line 321
    iget-wide v3, p0, Lcom/felicanetworks/mfc/PurseData;->purseData:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    iget-wide v3, p0, Lcom/felicanetworks/mfc/PurseData;->cashBackData:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/felicanetworks/mfc/PurseData;->userData:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    iget v3, p0, Lcom/felicanetworks/mfc/PurseData;->execID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    .line 320
    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 324
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseData;->purseData:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 325
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseData;->cashBackData:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 326
    iget-object v0, p0, Lcom/felicanetworks/mfc/PurseData;->userData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 327
    iget v0, p0, Lcom/felicanetworks/mfc/PurseData;->execID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    const-string v0, "999"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 330
    return-void
.end method

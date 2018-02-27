.class public Lcom/felicanetworks/mfc/PINEnableData;
.super Lcom/felicanetworks/mfc/Data;
.source "PINEnableData.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/PINEnableData;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXC_PIN:Ljava/lang/String; = "The value must be from 0 to 0xffffffff."

.field private static final MAX_PIN:J = 0xffffffffL

.field private static final MIN_PIN:J = 0x0L

.field public static final TYPE:I = 0x8


# instance fields
.field private enabling:Z

.field private pin:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/felicanetworks/mfc/PINEnableData$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/PINEnableData$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/PINEnableData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 7
    .param p1, "pin"    # J
    .param p3, "enabling"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 61
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 62
    const-string v0, "%s : pin = %d, enabling = %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/felicanetworks/mfc/PINEnableData;->setPIN(J)V

    .line 64
    invoke-virtual {p0, p3}, Lcom/felicanetworks/mfc/PINEnableData;->setEnabling(Z)V

    .line 65
    const-string v0, "%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 180
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 181
    const-string v0, "%s : in = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PINEnableData;->readFromParcel(Landroid/os/Parcel;)V

    .line 183
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/PINEnableData;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PINEnableData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    const-string v1, "%s : in = %s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "000"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 166
    new-array v0, v5, [Z

    .line 169
    .local v0, "tmp":[Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/felicanetworks/mfc/PINEnableData;->pin:J

    .line 170
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 171
    aget-boolean v1, v0, v4

    iput-boolean v1, p0, Lcom/felicanetworks/mfc/PINEnableData;->enabling:Z

    .line 173
    const-string v1, "%s : pin = %d, enabling = %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "999"

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/felicanetworks/mfc/PINEnableData;->pin:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    iget-boolean v3, p0, Lcom/felicanetworks/mfc/PINEnableData;->enabling:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 174
    return-void
.end method


# virtual methods
.method public checkFormat()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 223
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v5

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PINEnableData;->pin:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/felicanetworks/mfc/PINEnableData;->pin:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 225
    :cond_0
    const-string v0, "%s : Throw IllegalArgumentException EXC_PIN"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "800"

    aput-object v2, v1, v5

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_1
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v5

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public getPIN()J
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 88
    const-string v0, "%s : pin = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PINEnableData;->pin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PINEnableData;->pin:J

    return-wide v0
.end method

.method public getType()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 76
    const-string v0, "%s : TYPE = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 77
    return v6
.end method

.method public isEnabling()Z
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 121
    const-string v0, "%s : enabling = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/felicanetworks/mfc/PINEnableData;->enabling:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/PINEnableData;->enabling:Z

    return v0
.end method

.method public setEnabling(Z)V
    .locals 6
    .param p1, "enabling"    # Z

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    const-string v0, "%s : enabling = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iput-boolean p1, p0, Lcom/felicanetworks/mfc/PINEnableData;->enabling:Z

    .line 134
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public setPIN(J)V
    .locals 7
    .param p1, "pin"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 104
    const-string v0, "%s : pin = %d"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 105
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 106
    :cond_0
    const-string v0, "%s : Throw IllegalArgumentException EXC_PIN"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "800"

    aput-object v2, v1, v3

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    iput-wide p1, p0, Lcom/felicanetworks/mfc/PINEnableData;->pin:J

    .line 110
    const-string v0, "%s : this.pin = %d"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PINEnableData;->pin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 9
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 205
    const-string v1, "%s : out = %s, flag = %d"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "000"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v8, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 208
    new-array v0, v5, [Z

    iget-boolean v1, p0, Lcom/felicanetworks/mfc/PINEnableData;->enabling:Z

    aput-boolean v1, v0, v4

    .line 211
    .local v0, "tmp":[Z
    iget-wide v1, p0, Lcom/felicanetworks/mfc/PINEnableData;->pin:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 212
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 213
    const-string v1, "%s : pin = %d, enabling = %s"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "999"

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/felicanetworks/mfc/PINEnableData;->pin:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    iget-boolean v3, p0, Lcom/felicanetworks/mfc/PINEnableData;->enabling:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v8, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 214
    return-void
.end method

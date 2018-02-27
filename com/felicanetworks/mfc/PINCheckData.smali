.class public Lcom/felicanetworks/mfc/PINCheckData;
.super Lcom/felicanetworks/mfc/Data;
.source "PINCheckData.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/PINCheckData;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXC_PIN:Ljava/lang/String; = "The value must be from 0 to 0xffffffff."

.field private static final MAX_PIN:J = 0xffffffffL

.field private static final MIN_PIN:J = 0x0L

.field public static final TYPE:I = 0x6


# instance fields
.field private pin:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/felicanetworks/mfc/PINCheckData$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/PINCheckData$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/PINCheckData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    return-void
.end method

.method public constructor <init>(J)V
    .locals 6
    .param p1, "pin"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 56
    const-string v0, "%s : pin = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000 mfc/PINCheckData"

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 57
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 mfc/PINCheckData"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/felicanetworks/mfc/PINCheckData;->setPIN(J)V

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 145
    const-string v0, "%s : in = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000 mfc/PINCheckData"

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PINCheckData;->readFromParcel(Landroid/os/Parcel;)V

    .line 147
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 mfc/PINCheckData"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/PINCheckData;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PINCheckData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    const-string v0, "%s : in = %s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "000 readFromParcel"

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/mfc/PINCheckData;->pin:J

    .line 137
    const-string v0, "%s : pin = %d"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "999 readFromParcel"

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PINCheckData;->pin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 138
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

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 182
    const-string v0, "%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "000 checkFormat"

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 183
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PINCheckData;->pin:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/felicanetworks/mfc/PINCheckData;->pin:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 184
    :cond_0
    const/4 v0, 0x6

    const-string v1, "%s : Throw IllegalArgumentException EXC_PIN"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "800 checkFormat"

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_1
    const-string v0, "%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "999 checkFormat"

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public getPIN()J
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 getPIN"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 82
    const-string v0, "%s : pin = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999 getPIN"

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PINCheckData;->pin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PINCheckData;->pin:J

    return-wide v0
.end method

.method public getType()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 69
    const-string v0, "%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "000 getType"

    aput-object v2, v1, v4

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 70
    const-string v0, "%s : TYPE = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999 getType"

    aput-object v2, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return v3
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

    .line 98
    const-string v0, "%s : pin = %d"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "000 setPIN"

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 99
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 100
    :cond_0
    const-string v0, "%s : Throw IllegalArgumentException EXC_PIN"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "800 setPIN"

    aput-object v2, v1, v3

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    iput-wide p1, p0, Lcom/felicanetworks/mfc/PINCheckData;->pin:J

    .line 104
    const-string v0, "%s : this.pin = %d"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "999 setPIN"

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PINCheckData;->pin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 169
    const-string v0, "%s : out = %s, flag = %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000 writeToParcel"

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PINCheckData;->pin:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 172
    const-string v0, "%s : pin = %d"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "999 writeToParcel"

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PINCheckData;->pin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 173
    return-void
.end method

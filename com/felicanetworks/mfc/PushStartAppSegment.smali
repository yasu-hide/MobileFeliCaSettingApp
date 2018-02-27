.class public Lcom/felicanetworks/mfc/PushStartAppSegment;
.super Lcom/felicanetworks/mfc/PushSegment;
.source "PushStartAppSegment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/PushStartAppSegment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appIdentificationCode:Ljava/lang/String;

.field private appStartupParam:[Ljava/lang/String;

.field private appURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/felicanetworks/mfc/PushStartAppSegment$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/PushStartAppSegment$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/PushStartAppSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 217
    invoke-direct {p0}, Lcom/felicanetworks/mfc/PushSegment;-><init>()V

    .line 219
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 221
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PushStartAppSegment;->readFromParcel(Landroid/os/Parcel;)V

    .line 223
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/PushStartAppSegment;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PushStartAppSegment;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .param p1, "appURL"    # Ljava/lang/String;
    .param p2, "appIdentificationCode"    # Ljava/lang/String;
    .param p3, "appStartupParam"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Lcom/felicanetworks/mfc/PushSegment;-><init>()V

    .line 53
    const-string v1, "%s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "000"

    aput-object v4, v3, v2

    invoke-static {v11, v1, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iput v8, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->activateType:I

    .line 57
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appURL:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appIdentificationCode:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appStartupParam:[Ljava/lang/String;

    .line 61
    const-string v1, "%s appURL=%s"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "001"

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appURL:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-static {v10, v1, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 62
    const-string v1, "%s appIdentificationCode=%s"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "001"

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appIdentificationCode:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-static {v10, v1, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v1, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appStartupParam:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 64
    iget-object v3, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appStartupParam:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_1

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushStartAppSegment;->checkFormat()V

    .line 71
    const-string v1, "%s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "999"

    aput-object v4, v3, v2

    invoke-static {v11, v1, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-void

    .line 64
    :cond_1
    aget-object v0, v3, v1

    .line 65
    .local v0, "param":Ljava/lang/String;
    const-string v5, "%s appStartupParam=%s"

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "001"

    aput-object v7, v6, v2

    aput-object v0, v6, v8

    invoke-static {v10, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 194
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iput v3, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->activateType:I

    .line 198
    if-nez p1, :cond_0

    .line 199
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "700"

    aput-object v2, v1, v4

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appURL:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appIdentificationCode:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appStartupParam:[Ljava/lang/String;

    .line 208
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushStartAppSegment;->checkFormat()V

    .line 210
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 211
    return-void
.end method


# virtual methods
.method public checkFormat()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 264
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 266
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushStartAppSegment;->getType()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appIdentificationCode:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 267
    :cond_0
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "700"

    aput-object v2, v1, v4

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 271
    :cond_1
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 272
    return-void
.end method

.method public describeContents()I
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 233
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 234
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 235
    return v3
.end method

.method public getAppIdentificationCode()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 94
    const-string v0, "%s return=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appIdentificationCode:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appIdentificationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAppStartupParam()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 105
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 106
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appStartupParam:[Ljava/lang/String;

    return-object v0
.end method

.method public getAppURL()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 82
    const-string v0, "%s return=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appURL:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appURL:Ljava/lang/String;

    return-object v0
.end method

.method public setAppIdentificationCode(Ljava/lang/String;)V
    .locals 6
    .param p1, "appIdentificationCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 135
    const-string v0, "%s appIdentificationCode=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 137
    if-nez p1, :cond_0

    .line 138
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "700"

    aput-object v2, v1, v4

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 141
    :cond_0
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appIdentificationCode:Ljava/lang/String;

    .line 143
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public setAppStartupParam([Ljava/lang/String;)V
    .locals 6
    .param p1, "appStartupParam"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 156
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appStartupParam:[Ljava/lang/String;

    .line 160
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public setAppURL(Ljava/lang/String;)V
    .locals 6
    .param p1, "appURL"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    const-string v0, "%s appURL=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 120
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appURL:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 246
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appIdentificationCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appStartupParam:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 253
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 254
    return-void
.end method

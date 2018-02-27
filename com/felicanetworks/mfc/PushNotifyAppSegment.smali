.class public Lcom/felicanetworks/mfc/PushNotifyAppSegment;
.super Lcom/felicanetworks/mfc/PushSegment;
.source "PushNotifyAppSegment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/PushNotifyAppSegment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appIdentificationCode:Ljava/lang/String;

.field private appNotificationParam:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/felicanetworks/mfc/PushNotifyAppSegment$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/PushNotifyAppSegment$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    invoke-direct {p0}, Lcom/felicanetworks/mfc/PushSegment;-><init>()V

    .line 170
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 mfc/PushNotifyAppSegment"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->readFromParcel(Landroid/os/Parcel;)V

    .line 174
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 mfc/PushNotifyAppSegment"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 175
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/PushNotifyAppSegment;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PushNotifyAppSegment;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "appIdentificationCode"    # Ljava/lang/String;
    .param p2, "appNotificationParam"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    invoke-direct {p0}, Lcom/felicanetworks/mfc/PushSegment;-><init>()V

    .line 40
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 mfc/PushNotifyAppSegment"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iput v5, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->activateType:I

    .line 44
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appIdentificationCode:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appNotificationParam:[Ljava/lang/String;

    .line 47
    const-string v0, "%s appIdentificationCode=%s"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "001 mfc/PushNotifyAppSegment"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appIdentificationCode:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 48
    const-string v0, "%s appNotificationParam=%s"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "001 mfc/PushNotifyAppSegment"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appNotificationParam:[Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->checkFormat()V

    .line 52
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 mfc/PushNotifyAppSegment"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 146
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "000 readFromParcel"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 148
    if-nez p1, :cond_0

    .line 149
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "700 readFromParcel"

    aput-object v2, v1, v4

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 153
    :cond_0
    iput v5, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->activateType:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appIdentificationCode:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appNotificationParam:[Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->checkFormat()V

    .line 161
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "999 readFromParcel"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 162
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

    .line 215
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "000 checkFormat"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->getType()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 218
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "700 checkFormat"

    aput-object v2, v1, v4

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 222
    :cond_0
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "999 checkFormat"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method public describeContents()I
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 184
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 describeContents"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 185
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 describeContents"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 187
    return v3
.end method

.method public getAppIdentificationCode()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 getAppIdentificationCode"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 63
    const-string v0, "%s return=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999 getAppIdentificationCode"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appIdentificationCode:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appIdentificationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAppNotificationParam()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 getAppNotificationParam"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 75
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 getAppNotificationParam"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appNotificationParam:[Ljava/lang/String;

    return-object v0
.end method

.method public setAppIdentificationCode(Ljava/lang/String;)V
    .locals 6
    .param p1, "appIdentificationCode"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    const-string v0, "%s appIdentificationCode=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000 setAppIdentificationCode"

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 93
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 setAppIdentificationCode"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appIdentificationCode:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setAppNotificationParam([Ljava/lang/String;)V
    .locals 6
    .param p1, "appNotificationParam"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 setAppNotificationParam"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 109
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 setAppNotificationParam"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appNotificationParam:[Ljava/lang/String;

    .line 112
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

    .line 198
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 writeToParcel"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appIdentificationCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appNotificationParam:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 204
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 writeToParcel"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 205
    return-void
.end method

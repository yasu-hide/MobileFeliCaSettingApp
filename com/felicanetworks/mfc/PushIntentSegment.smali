.class public Lcom/felicanetworks/mfc/PushIntentSegment;
.super Lcom/felicanetworks/mfc/PushSegment;
.source "PushIntentSegment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/PushIntentSegment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/felicanetworks/mfc/PushIntentSegment$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/PushIntentSegment$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/PushIntentSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 48
    invoke-direct {p0}, Lcom/felicanetworks/mfc/PushSegment;-><init>()V

    .line 50
    const-string v0, "%s In intent = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 52
    if-nez p1, :cond_0

    .line 53
    const-string v0, "%s intent == null"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "800"

    aput-object v2, v1, v4

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 58
    :cond_0
    iput v3, p0, Lcom/felicanetworks/mfc/PushIntentSegment;->activateType:I

    .line 60
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushIntentSegment;->intent:Landroid/content/Intent;

    .line 63
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 153
    invoke-direct {p0}, Lcom/felicanetworks/mfc/PushSegment;-><init>()V

    .line 155
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PushIntentSegment;->readFromParcel(Landroid/os/Parcel;)V

    .line 159
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/PushIntentSegment;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PushIntentSegment;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 132
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 134
    if-nez p1, :cond_0

    .line 135
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "700"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 139
    :cond_0
    iput v3, p0, Lcom/felicanetworks/mfc/PushIntentSegment;->activateType:I

    .line 142
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/felicanetworks/mfc/PushIntentSegment;->intent:Landroid/content/Intent;

    .line 144
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushIntentSegment;->checkFormat()V

    .line 146
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 147
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

    .line 197
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushIntentSegment;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 200
    const-string v0, "%s intent == null"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "800"

    aput-object v2, v1, v4

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushIntentSegment;->getType()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 205
    const-string v0, "%s activateType != 0x01"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "801"

    aput-object v2, v1, v4

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 208
    :cond_1
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public describeContents()I
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 169
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 170
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 171
    return v3
.end method

.method public getIntentData()Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 74
    const-string v0, "%s return = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushIntentSegment;->intent:Landroid/content/Intent;

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushIntentSegment;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public setIntentData(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 89
    const-string v0, "%s In intent = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 91
    if-nez p1, :cond_0

    .line 92
    const-string v0, "%s intent == null"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "800"

    aput-object v2, v1, v4

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushIntentSegment;->intent:Landroid/content/Intent;

    .line 98
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 100
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

    .line 181
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushIntentSegment;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 186
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 187
    return-void
.end method

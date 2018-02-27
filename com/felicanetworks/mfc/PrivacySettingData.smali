.class public Lcom/felicanetworks/mfc/PrivacySettingData;
.super Ljava/lang/Object;
.source "PrivacySettingData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/PrivacySettingData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected nodeCode:I

.field protected privacySetting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/felicanetworks/mfc/PrivacySettingData$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/PrivacySettingData$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/PrivacySettingData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 8
    .param p1, "nodeCode"    # I
    .param p2, "privacySetting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v1, "%s nodeCode = %s : privacySetting = %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "000"

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/felicanetworks/mfc/ServiceUtil;->checkNodeCode(I)V

    .line 46
    iput p1, p0, Lcom/felicanetworks/mfc/PrivacySettingData;->nodeCode:I

    .line 47
    iput-boolean p2, p0, Lcom/felicanetworks/mfc/PrivacySettingData;->privacySetting:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "999"

    aput-object v3, v2, v5

    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s %s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "800"

    aput-object v3, v2, v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const-string v0, "%s : in = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 163
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PrivacySettingData;->readFromParcel(Landroid/os/Parcel;)V

    .line 164
    const-string v0, "999"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/PrivacySettingData;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PrivacySettingData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    const-string v0, "%s : in = %s"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "000"

    aput-object v4, v3, v2

    aput-object p1, v3, v1

    invoke-static {v5, v0, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/PrivacySettingData;->nodeCode:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/felicanetworks/mfc/PrivacySettingData;->privacySetting:Z

    .line 153
    const-string v0, "001 nodeCode=%d privacySetting=%b"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/felicanetworks/mfc/PrivacySettingData;->nodeCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget-boolean v4, p0, Lcom/felicanetworks/mfc/PrivacySettingData;->privacySetting:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v5, v0, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 154
    const-string v0, "999"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 155
    return-void

    :cond_0
    move v0, v2

    .line 149
    goto :goto_0
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

    .line 203
    const-string v0, "000"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v0

    iget v1, p0, Lcom/felicanetworks/mfc/PrivacySettingData;->nodeCode:I

    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfc/ServiceUtil;->checkNodeCode(I)V

    .line 205
    const-string v0, "999"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public getNodeCode()I
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 66
    const-string v0, "%s return nodeCode = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    iget v2, p0, Lcom/felicanetworks/mfc/PrivacySettingData;->nodeCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget v0, p0, Lcom/felicanetworks/mfc/PrivacySettingData;->nodeCode:I

    return v0
.end method

.method public getPrivacySetting()Z
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 100
    const-string v0, "%s return privacySetting = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/felicanetworks/mfc/PrivacySettingData;->privacySetting:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 101
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/PrivacySettingData;->privacySetting:Z

    return v0
.end method

.method public setNodeCode(I)V
    .locals 8
    .param p1, "nodeCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 75
    const/4 v1, 0x7

    const-string v2, "%s nodeCode = %s"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "000"

    aput-object v4, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/felicanetworks/mfc/ServiceUtil;->checkNodeCode(I)V

    .line 80
    iput p1, p0, Lcom/felicanetworks/mfc/PrivacySettingData;->nodeCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    const/4 v1, 0x4

    const-string v2, "%s"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "999"

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 88
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s %s"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "800"

    aput-object v3, v2, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 83
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public setPraivacySetting(Z)V
    .locals 6
    .param p1, "privacySetting"    # Z

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    const-string v0, "%s In privacySetting = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iput-boolean p1, p0, Lcom/felicanetworks/mfc/PrivacySettingData;->privacySetting:Z

    .line 114
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    const-string v2, "%s : out = %s, flag = %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "000"

    aput-object v4, v3, v1

    aput-object p1, v3, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v6, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 187
    const/4 v2, 0x6

    const-string v3, "001 nodeCode=%d privacySetting=%b"

    new-array v4, v5, [Ljava/lang/Object;

    iget v5, p0, Lcom/felicanetworks/mfc/PrivacySettingData;->nodeCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-boolean v5, p0, Lcom/felicanetworks/mfc/PrivacySettingData;->privacySetting:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 190
    iget v2, p0, Lcom/felicanetworks/mfc/PrivacySettingData;->nodeCode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-boolean v2, p0, Lcom/felicanetworks/mfc/PrivacySettingData;->privacySetting:Z

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const-string v0, "999"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 194
    return-void

    :cond_0
    move v0, v1

    .line 191
    goto :goto_0
.end method

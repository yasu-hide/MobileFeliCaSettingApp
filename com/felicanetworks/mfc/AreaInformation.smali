.class public Lcom/felicanetworks/mfc/AreaInformation;
.super Ljava/lang/Object;
.source "AreaInformation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/AreaInformation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected areaCode:I

.field protected endServiceCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/felicanetworks/mfc/AreaInformation$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/AreaInformation$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/AreaInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    return-void
.end method

.method public constructor <init>(II)V
    .locals 8
    .param p1, "areaCode"    # I
    .param p2, "endServiceCode"    # I
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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v1, "%s areaCode = %s : endServiceCode = %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "000"

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/felicanetworks/mfc/ServiceUtil;->checkAreaCode(I)V

    .line 45
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/felicanetworks/mfc/ServiceUtil;->checkEndServiceCode(I)V

    .line 47
    iput p1, p0, Lcom/felicanetworks/mfc/AreaInformation;->areaCode:I

    .line 48
    iput p2, p0, Lcom/felicanetworks/mfc/AreaInformation;->endServiceCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "999"

    aput-object v3, v2, v5

    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 56
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s %s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "800"

    aput-object v3, v2, v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 51
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

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const-string v0, "%s : in = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/AreaInformation;->readFromParcel(Landroid/os/Parcel;)V

    .line 169
    const-string v0, "999"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/AreaInformation;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/AreaInformation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public getAreaCode()I
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 67
    const-string v0, "%s return areaCode = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    iget v2, p0, Lcom/felicanetworks/mfc/AreaInformation;->areaCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget v0, p0, Lcom/felicanetworks/mfc/AreaInformation;->areaCode:I

    return v0
.end method

.method public getEndServiceCode()I
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 101
    const-string v0, "%s return endServiceCode = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    iget v2, p0, Lcom/felicanetworks/mfc/AreaInformation;->endServiceCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget v0, p0, Lcom/felicanetworks/mfc/AreaInformation;->endServiceCode:I

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 153
    const-string v0, "%s : in = %s"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    aput-object p1, v1, v5

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/AreaInformation;->areaCode:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/AreaInformation;->endServiceCode:I

    .line 158
    const-string v0, "001 areaCode=%d  endServiceCode=%d"

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/felicanetworks/mfc/AreaInformation;->areaCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/felicanetworks/mfc/AreaInformation;->endServiceCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 159
    const-string v0, "999"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method public setAreaCode(I)V
    .locals 8
    .param p1, "areaCode"    # I
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

    .line 77
    const-string v1, "%s areaCode = %s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "000"

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/felicanetworks/mfc/ServiceUtil;->checkAreaCode(I)V

    .line 82
    iput p1, p0, Lcom/felicanetworks/mfc/AreaInformation;->areaCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "999"

    aput-object v3, v2, v5

    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 90
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s %s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "800"

    aput-object v3, v2, v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 85
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public setEndServiceCode(I)V
    .locals 8
    .param p1, "endServiceCode"    # I
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

    .line 111
    const-string v1, "%s endServiceCode = %s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "001"

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 114
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/felicanetworks/mfc/ServiceUtil;->checkEndServiceCode(I)V

    .line 116
    iput p1, p0, Lcom/felicanetworks/mfc/AreaInformation;->endServiceCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "999"

    aput-object v3, v2, v5

    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 124
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s %s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "800"

    aput-object v3, v2, v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 119
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 191
    const-string v0, "%s : out = %s, flag = %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 192
    const/4 v0, 0x6

    const-string v1, "001 areaCode=%d  endServiceCode=%d"

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/felicanetworks/mfc/AreaInformation;->areaCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/felicanetworks/mfc/AreaInformation;->endServiceCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget v0, p0, Lcom/felicanetworks/mfc/AreaInformation;->areaCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Lcom/felicanetworks/mfc/AreaInformation;->endServiceCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const-string v0, "999"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 198
    return-void
.end method

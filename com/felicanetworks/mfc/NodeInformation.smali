.class public Lcom/felicanetworks/mfc/NodeInformation;
.super Ljava/lang/Object;
.source "NodeInformation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/NodeInformation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected areaCodeList:[Lcom/felicanetworks/mfc/AreaInformation;

.field protected serviceCodeList:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/felicanetworks/mfc/NodeInformation$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/NodeInformation$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/NodeInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const-string v0, "%s : in = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000 mfc/NodeInformation"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/NodeInformation;->readFromParcel(Landroid/os/Parcel;)V

    .line 222
    const-string v0, "999 mfc/NodeInformation"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/NodeInformation;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/NodeInformation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([Lcom/felicanetworks/mfc/AreaInformation;[I)V
    .locals 10
    .param p1, "areaCodeList"    # [Lcom/felicanetworks/mfc/AreaInformation;
    .param p2, "serviceCodeList"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v2, "%s In areaCodeList = %s : serviceCodeList = %s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "000 mfc/NodeInformation"

    aput-object v4, v3, v6

    .line 45
    aput-object p1, v3, v5

    aput-object p2, v3, v7

    .line 43
    invoke-static {v9, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 47
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 49
    :cond_0
    const-string v2, "%s areaCodeList == %s : serviceCodeList == %s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "800 mfc/NodeInformation"

    aput-object v4, v3, v6

    .line 50
    aput-object p1, v3, v5

    aput-object p2, v3, v7

    .line 48
    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 51
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 53
    :cond_1
    array-length v2, p1

    if-gez v2, :cond_2

    .line 54
    const-string v2, "%s areaCodeList.length == %d"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "801 mfc/NodeInformation"

    aput-object v4, v3, v6

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 58
    :cond_2
    array-length v2, p2

    if-gez v2, :cond_3

    .line 59
    const-string v2, "%s serviceCodeList.length == %d"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "802 mfc/NodeInformation"

    aput-object v4, v3, v6

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 60
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 64
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p2

    if-lt v1, v2, :cond_4

    .line 68
    iput-object p1, p0, Lcom/felicanetworks/mfc/NodeInformation;->areaCodeList:[Lcom/felicanetworks/mfc/AreaInformation;

    .line 69
    iput-object p2, p0, Lcom/felicanetworks/mfc/NodeInformation;->serviceCodeList:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    const-string v2, "%s"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "999 mfc/NodeInformation"

    aput-object v4, v3, v6

    invoke-static {v9, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 77
    return-void

    .line 65
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v2

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Lcom/felicanetworks/mfc/ServiceUtil;->checkServiceCode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "%s %s"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "803 mfc/NodeInformation"

    aput-object v4, v3, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 72
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public getAreaInformationList()[Lcom/felicanetworks/mfc/AreaInformation;
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 getAreaInformationList"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 90
    const-string v0, "%s return areaCode = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999 getAreaInformationList"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/felicanetworks/mfc/NodeInformation;->areaCodeList:[Lcom/felicanetworks/mfc/AreaInformation;

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/felicanetworks/mfc/NodeInformation;->areaCodeList:[Lcom/felicanetworks/mfc/AreaInformation;

    return-object v0
.end method

.method public getServiceCodeList()[I
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 getServiceCodeList"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 130
    const-string v0, "%s return serviceCodeList = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999 getServiceCodeList"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/felicanetworks/mfc/NodeInformation;->serviceCodeList:[I

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/felicanetworks/mfc/NodeInformation;->serviceCodeList:[I

    return-object v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    .line 192
    const-string v3, "%s : in = %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "000 readFromParcel"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v7, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 195
    const-class v3, Lcom/felicanetworks/mfc/AreaInformation;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 196
    .local v1, "parcels":[Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    .line 197
    array-length v3, v1

    new-array v3, v3, [Lcom/felicanetworks/mfc/AreaInformation;

    iput-object v3, p0, Lcom/felicanetworks/mfc/NodeInformation;->areaCodeList:[Lcom/felicanetworks/mfc/AreaInformation;

    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_2

    .line 203
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 204
    .local v2, "size":I
    if-ltz v2, :cond_1

    .line 205
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/felicanetworks/mfc/NodeInformation;->serviceCodeList:[I

    .line 206
    iget-object v3, p0, Lcom/felicanetworks/mfc/NodeInformation;->serviceCodeList:[I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    .line 212
    :cond_1
    const-string v3, "999 readFromParcel"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v7, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 213
    return-void

    .line 199
    .end local v2    # "size":I
    .restart local v0    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/felicanetworks/mfc/NodeInformation;->areaCodeList:[Lcom/felicanetworks/mfc/AreaInformation;

    aget-object v3, v1, v0

    check-cast v3, Lcom/felicanetworks/mfc/AreaInformation;

    aput-object v3, v4, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setAreaInformationList([Lcom/felicanetworks/mfc/AreaInformation;)V
    .locals 7
    .param p1, "areaCodeList"    # [Lcom/felicanetworks/mfc/AreaInformation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 100
    const-string v0, "%s In areaCode = %s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "000 setAreaInformationList"

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 102
    if-nez p1, :cond_0

    .line 104
    const-string v0, "%s areaCodeList == %s : serviceCodeList == %s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "800 setAreaInformationList"

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    .line 103
    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 108
    :cond_0
    array-length v0, p1

    if-gez v0, :cond_1

    .line 109
    const-string v0, "%s areaCodeList.length == %d"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "801 setAreaInformationList"

    aput-object v2, v1, v4

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 113
    :cond_1
    iput-object p1, p0, Lcom/felicanetworks/mfc/NodeInformation;->areaCodeList:[Lcom/felicanetworks/mfc/AreaInformation;

    .line 115
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "999 setAreaInformationList"

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public setServiceCodeList([I)V
    .locals 9
    .param p1, "serviceCodeList"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 140
    const-string v2, "%s In serviceCodeList = %s"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "000 setServiceCodeList"

    aput-object v4, v3, v6

    aput-object p1, v3, v5

    invoke-static {v8, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 142
    if-nez p1, :cond_0

    .line 144
    const-string v2, "%s areaCodeList == %s : serviceCodeList == %s"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "800 setServiceCodeList"

    aput-object v4, v3, v6

    aput-object p1, v3, v5

    .line 143
    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 145
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 147
    :cond_0
    array-length v2, p1

    if-gez v2, :cond_1

    .line 148
    const-string v2, "%s serviceCodeList.length == %d"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "801 setServiceCodeList"

    aput-object v4, v3, v6

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 149
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 153
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-lt v1, v2, :cond_2

    .line 157
    iput-object p1, p0, Lcom/felicanetworks/mfc/NodeInformation;->serviceCodeList:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    const-string v2, "%s"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "999 setServiceCodeList"

    aput-object v4, v3, v6

    invoke-static {v8, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 163
    return-void

    .line 154
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v2

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/felicanetworks/mfc/ServiceUtil;->checkServiceCode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "%s %s"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "802 setServiceCodeList"

    aput-object v4, v3, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 160
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v1, 0x0

    .line 244
    const/4 v0, 0x4

    const-string v2, "%s : out = %s, flag = %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "000 writeToParcel"

    aput-object v4, v3, v1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/felicanetworks/mfc/NodeInformation;->areaCodeList:[Lcom/felicanetworks/mfc/AreaInformation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 252
    iget-object v0, p0, Lcom/felicanetworks/mfc/NodeInformation;->serviceCodeList:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfc/NodeInformation;->serviceCodeList:[I

    array-length v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-object v0, p0, Lcom/felicanetworks/mfc/NodeInformation;->serviceCodeList:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 255
    const/4 v0, 0x7

    const-string v2, "999 writeToParcel"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 256
    return-void

    :cond_0
    move v0, v1

    .line 252
    goto :goto_0
.end method

.class public Lcom/felicanetworks/mfc/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/Device;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODING:Ljava/lang/String; = "ISO8859_1"

.field private static final EXC_INVALID_PARAMETER:Ljava/lang/String; = "The specified type/name is null or contains an invalid character, otherwise the length is out of range."

.field private static final MAX_CHAR:I = 0x7e

.field private static final MAX_LENGTH:I = 0xff

.field private static final MIN_CHAR:I = 0x21

.field private static final MIN_LENGTH:I = 0x1


# instance fields
.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/felicanetworks/mfc/Device$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/Device$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/Device;->readFromParcel(Landroid/os/Parcel;)V

    .line 208
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/Device;)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/Device;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/Device;->setType(Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p2}, Lcom/felicanetworks/mfc/Device;->setName(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private checkString(Ljava/lang/String;)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 154
    :try_start_0
    const-string v4, "ISO8859_1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 155
    .local v0, "bytes":[B
    array-length v4, v0

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    array-length v4, v0

    const/16 v5, 0xff

    if-le v4, v5, :cond_1

    .line 156
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The specified type/name is null or contains an invalid character, otherwise the length is out of range."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v2

    .line 165
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    throw v2

    .line 158
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "bytes":[B
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_1
    array-length v4, v0

    if-lt v3, v4, :cond_2

    .line 169
    return-void

    .line 159
    :cond_2
    aget-byte v4, v0, v3

    and-int/lit16 v1, v4, 0xff

    .line 160
    .local v1, "c":I
    const/16 v4, 0x21

    if-lt v1, v4, :cond_3

    const/16 v4, 0x7e

    if-le v1, v4, :cond_4

    .line 161
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The specified type/name is null or contains an invalid character, otherwise the length is out of range."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    .end local v0    # "bytes":[B
    .end local v1    # "c":I
    .end local v3    # "i":I
    :catch_1
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The specified type/name is null or contains an invalid character, otherwise the length is out of range."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 158
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bytes":[B
    .restart local v1    # "c":I
    .restart local v3    # "i":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/Device;->type:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/Device;->name:Ljava/lang/String;

    .line 200
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/Device;->checkString(Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lcom/felicanetworks/mfc/Device;->name:Ljava/lang/String;

    .line 137
    return-void
.end method

.method private setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/Device;->checkString(Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/felicanetworks/mfc/Device;->type:Ljava/lang/String;

    .line 108
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
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/felicanetworks/mfc/Device;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/felicanetworks/mfc/Device;->checkString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/felicanetworks/mfc/Device;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/felicanetworks/mfc/Device;->checkString(Ljava/lang/String;)V

    .line 247
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 248
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/felicanetworks/mfc/Device;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/felicanetworks/mfc/Device;->type:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcom/felicanetworks/mfc/Device;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/felicanetworks/mfc/Device;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    return-void
.end method

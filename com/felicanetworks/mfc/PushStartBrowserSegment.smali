.class public Lcom/felicanetworks/mfc/PushStartBrowserSegment;
.super Lcom/felicanetworks/mfc/PushSegment;
.source "PushStartBrowserSegment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/PushStartBrowserSegment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private browserStartupParam:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/felicanetworks/mfc/PushStartBrowserSegment$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/PushStartBrowserSegment$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 20
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    invoke-direct {p0}, Lcom/felicanetworks/mfc/PushSegment;-><init>()V

    .line 175
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 mfc/PushStartBrowserSegment"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->readFromParcel(Landroid/os/Parcel;)V

    .line 179
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 mfc/PushStartBrowserSegment"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/PushStartBrowserSegment;)V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PushStartBrowserSegment;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "browserStartupParam"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 42
    invoke-direct {p0}, Lcom/felicanetworks/mfc/PushSegment;-><init>()V

    .line 44
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "000 mfc/PushStartBrowserSegment"

    aput-object v2, v1, v4

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 46
    if-nez p1, :cond_0

    .line 47
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "700 mfc/PushStartBrowserSegment"

    aput-object v2, v1, v4

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_0
    iput v5, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->activateType:I

    .line 53
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->url:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->browserStartupParam:Ljava/lang/String;

    .line 56
    const-string v0, "%s url=%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "001 mfc/PushStartBrowserSegment"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->url:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 57
    const-string v0, "%s browserStartupParam=%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "001 mfc/PushStartBrowserSegment"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->browserStartupParam:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 59
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "999 mfc/PushStartBrowserSegment"

    aput-object v2, v1, v4

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 151
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "000 readFromParcel"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 153
    if-nez p1, :cond_0

    .line 154
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "700 readFromParcel"

    aput-object v2, v1, v4

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 158
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->activateType:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->url:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->browserStartupParam:Ljava/lang/String;

    .line 164
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->checkFormat()V

    .line 166
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "999 readFromParcel"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 167
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

    .line 221
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "000 checkFormat"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 223
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->url:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 224
    :cond_0
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "700 checkFormat"

    aput-object v2, v1, v4

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 228
    :cond_1
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "999 checkFormat"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method public describeContents()I
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 190
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 describeContents"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 191
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 describeContents"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 193
    return v3
.end method

.method public getBrowserStartupParam()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 getBrowserStartupParam"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 80
    const-string v0, "%s return=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999 getBrowserStartupParam"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->browserStartupParam:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->browserStartupParam:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 getURL"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const-string v0, "%s return=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999 getURL"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->url:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setBrowserStartupParam(Ljava/lang/String;)V
    .locals 6
    .param p1, "browserStartupParam"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    const-string v0, "%s browserStartupParam=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000 setBrowserStartupParam"

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->browserStartupParam:Ljava/lang/String;

    .line 116
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 setBrowserStartupParam"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 94
    const-string v0, "%s url=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000 setURL"

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 96
    if-nez p1, :cond_0

    .line 97
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "700 setURL"

    aput-object v2, v1, v4

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->url:Ljava/lang/String;

    .line 103
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "999 setURL"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 104
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

    .line 204
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 writeToParcel"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->browserStartupParam:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 writeToParcel"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.class Lcom/felicanetworks/mfc/PushStartBrowserSegment$1;
.super Ljava/lang/Object;
.source "PushStartBrowserSegment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/PushStartBrowserSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/felicanetworks/mfc/PushStartBrowserSegment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/felicanetworks/mfc/PushStartBrowserSegment;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 createFromParcel"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 131
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 createFromParcel"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 133
    new-instance v0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/felicanetworks/mfc/PushStartBrowserSegment;-><init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/PushStartBrowserSegment;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/PushStartBrowserSegment$1;->createFromParcel(Landroid/os/Parcel;)Lcom/felicanetworks/mfc/PushStartBrowserSegment;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/felicanetworks/mfc/PushStartBrowserSegment;
    .locals 6
    .param p1, "size"    # I

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 newArray"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 139
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 newArray"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 141
    new-array v0, p1, [Lcom/felicanetworks/mfc/PushStartBrowserSegment;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/PushStartBrowserSegment$1;->newArray(I)[Lcom/felicanetworks/mfc/PushStartBrowserSegment;

    move-result-object v0

    return-object v0
.end method

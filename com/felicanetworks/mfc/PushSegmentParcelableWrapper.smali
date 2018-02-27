.class public Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;
.super Ljava/lang/Object;
.source "PushSegmentParcelableWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected pushSegment:Lcom/felicanetworks/mfc/PushSegment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper$1;-><init>()V

    .line 76
    sput-object v0, Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "%s in"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 mfc/PushSegmentParcelableWrapper"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 45
    const-class v0, Lcom/felicanetworks/mfc/PushSegment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/PushSegment;

    iput-object v0, p0, Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;->pushSegment:Lcom/felicanetworks/mfc/PushSegment;

    .line 47
    const-string v0, "%s pushSegment=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999 mfc/PushSegmentParcelableWrapper"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;->pushSegment:Lcom/felicanetworks/mfc/PushSegment;

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/felicanetworks/mfc/PushSegment;)V
    .locals 6
    .param p1, "pushSegment"    # Lcom/felicanetworks/mfc/PushSegment;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "%s pushSegment=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000 mfc/PushSegmentParcelableWrapper"

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;->pushSegment:Lcom/felicanetworks/mfc/PushSegment;

    .line 29
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 mfc/PushSegmentParcelableWrapper"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 describeContents"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 107
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 describeContents"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 109
    return v3
.end method

.method public getPushSegment()Lcom/felicanetworks/mfc/PushSegment;
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 getPushSegment"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 68
    const-string v0, "%s pushSegment=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999 getPushSegment"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;->pushSegment:Lcom/felicanetworks/mfc/PushSegment;

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;->pushSegment:Lcom/felicanetworks/mfc/PushSegment;

    return-object v0
.end method

.method public setPushSegment(Lcom/felicanetworks/mfc/PushSegment;)V
    .locals 6
    .param p1, "pushSegment"    # Lcom/felicanetworks/mfc/PushSegment;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const-string v0, "%s pushSegment=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000 setPushSegment"

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;->pushSegment:Lcom/felicanetworks/mfc/PushSegment;

    .line 59
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 setPushSegment"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    const-string v0, "%s dst"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 writeToParcel"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;->pushSegment:Lcom/felicanetworks/mfc/PushSegment;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 122
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 writeToParcel"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 123
    return-void
.end method

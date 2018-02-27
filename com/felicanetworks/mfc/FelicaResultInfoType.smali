.class public Lcom/felicanetworks/mfc/FelicaResultInfoType;
.super Lcom/felicanetworks/mfc/FelicaResultInfo;
.source "FelicaResultInfoType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/felicanetworks/mfc/FelicaResultInfo;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# instance fields
.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 6
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/felicanetworks/mfc/FelicaResultInfoType;, "Lcom/felicanetworks/mfc/FelicaResultInfoType<TE;>;"
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;)V

    .line 39
    const-string v0, "%s exceptionType=%d message=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000 mfc/FelicaResultInfoType"

    aput-object v2, v1, v3

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object p2, v1, v2

    .line 39
    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 41
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 mfc/FelicaResultInfoType"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 7
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "type"    # I

    .prologue
    .local p0, "this":Lcom/felicanetworks/mfc/FelicaResultInfoType;, "Lcom/felicanetworks/mfc/FelicaResultInfoType<TE;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;II)V

    .line 56
    const-string v0, "%s exceptionType=%d message=%s id=%d type=%d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000 mfc/FelicaResultInfoType"

    aput-object v2, v1, v5

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 56
    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 58
    const-string v0, "%s"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "999 mfc/FelicaResultInfoType"

    aput-object v2, v1, v5

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIII)V
    .locals 7
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "type"    # I
    .param p5, "statusFlag1"    # I
    .param p6, "statusFlag2"    # I

    .prologue
    .local p0, "this":Lcom/felicanetworks/mfc/FelicaResultInfoType;, "Lcom/felicanetworks/mfc/FelicaResultInfoType<TE;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 74
    invoke-direct/range {p0 .. p6}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;IIII)V

    .line 75
    const-string v0, "%s exceptionType=%d message=%s id=%d type=%d statusFlag1=%d statusFlag2=%d"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000 mfc/FelicaResultInfoType"

    aput-object v2, v1, v5

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 75
    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 77
    const-string v0, "%s"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "999 mfc/FelicaResultInfoType"

    aput-object v2, v1, v5

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/felicanetworks/mfc/FelicaResultInfoType;, "Lcom/felicanetworks/mfc/FelicaResultInfoType<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    const/4 v4, 0x0

    .line 24
    invoke-direct {p0}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>()V

    .line 25
    const/4 v0, 0x4

    const-string v1, "%s value=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "000 mfc/FelicaResultInfoType"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iput-object p1, p0, Lcom/felicanetworks/mfc/FelicaResultInfoType;->value:Ljava/lang/Object;

    .line 27
    const/4 v0, 0x6

    const-string v1, "999 mfc/FelicaResultInfoType"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/felicanetworks/mfc/FelicaResultInfoType;, "Lcom/felicanetworks/mfc/FelicaResultInfoType<TE;>;"
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 getValue"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 88
    const-string v0, "%s value = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999 getValue"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/felicanetworks/mfc/FelicaResultInfoType;->value:Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaResultInfoType;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .local p0, "this":Lcom/felicanetworks/mfc/FelicaResultInfoType;, "Lcom/felicanetworks/mfc/FelicaResultInfoType<TE;>;"
    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 readFromParcel"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-super {p0, p1}, Lcom/felicanetworks/mfc/FelicaResultInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 109
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 readFromParcel"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .local p0, "this":Lcom/felicanetworks/mfc/FelicaResultInfoType;, "Lcom/felicanetworks/mfc/FelicaResultInfoType<TE;>;"
    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 writeToParcel"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-super {p0, p1, p2}, Lcom/felicanetworks/mfc/FelicaResultInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 100
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 writeToParcel"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 101
    return-void
.end method

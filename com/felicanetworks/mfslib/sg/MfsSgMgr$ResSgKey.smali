.class public Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;
.super Ljava/lang/Object;
.source "MfsSgMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfslib/sg/MfsSgMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ResSgKey"
.end annotation


# instance fields
.field public final logicalKey:I

.field public final physicalKey:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "logicalKey"    # I
    .param p2, "physicalKey"    # I

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p1, p0, Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;->logicalKey:I

    .line 138
    iput p2, p0, Lcom/felicanetworks/mfslib/sg/MfsSgMgr$ResSgKey;->physicalKey:I

    .line 139
    return-void
.end method

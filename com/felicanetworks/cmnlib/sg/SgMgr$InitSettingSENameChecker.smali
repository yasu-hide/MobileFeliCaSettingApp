.class public Lcom/felicanetworks/cmnlib/sg/SgMgr$InitSettingSENameChecker;
.super Lcom/felicanetworks/cmnlib/sg/SgMgr$StringValueChecker;
.source "SgMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/cmnlib/sg/SgMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InitSettingSENameChecker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/cmnlib/sg/SgMgr;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/cmnlib/sg/SgMgr;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr$InitSettingSENameChecker;->this$0:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/sg/SgMgr$StringValueChecker;-><init>(Lcom/felicanetworks/cmnlib/sg/SgMgr;)V

    return-void
.end method


# virtual methods
.method protected getPermitList()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/util/DataCheckerException;
        }
    .end annotation

    .prologue
    .line 329
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v0, v1

    return-object v0
.end method

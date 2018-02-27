.class public abstract Lcom/felicanetworks/gpaslib/common/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field protected a:Lcom/felicanetworks/gpaslib/GpasException;

.field private synthetic b:Lcom/felicanetworks/gpaslib/common/b;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/gpaslib/common/b;)V
    .locals 1

    .prologue
    .line 615
    iput-object p1, p0, Lcom/felicanetworks/gpaslib/common/c;->b:Lcom/felicanetworks/gpaslib/common/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/common/c;->a:Lcom/felicanetworks/gpaslib/GpasException;

    return-void
.end method


# virtual methods
.method public final a()Lcom/felicanetworks/gpaslib/GpasException;
    .locals 3

    .prologue
    .line 626
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/c;->b:Lcom/felicanetworks/gpaslib/common/b;

    iget-object v0, v0, Lcom/felicanetworks/gpaslib/common/b;->a:Lcom/felicanetworks/gpaslib/model/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/gpaslib/common/GpasLog;->a(Lcom/felicanetworks/gpaslib/model/b;I[Ljava/lang/Object;)V

    .line 627
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/common/c;->a:Lcom/felicanetworks/gpaslib/GpasException;

    return-object v0
.end method

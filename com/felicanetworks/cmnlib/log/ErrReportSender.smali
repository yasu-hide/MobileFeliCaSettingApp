.class public Lcom/felicanetworks/cmnlib/log/ErrReportSender;
.super Ljava/lang/Object;
.source "ErrReportSender.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;
    }
.end annotation


# static fields
.field static final MSG_ILLEGAL_STATE:Ljava/lang/String; = "Sending error report now."

.field static final MSG_START_ERR_REPORT_ILLEGALARGUMENT:Ljava/lang/String; = "A listener or logdata is nothing."


# instance fields
.field private agent:Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

.field private context:Lcom/felicanetworks/cmnlib/AppContext;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/cmnlib/AppContext;)V
    .locals 0
    .param p1, "context"    # Lcom/felicanetworks/cmnlib/AppContext;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->context:Lcom/felicanetworks/cmnlib/AppContext;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/felicanetworks/cmnlib/log/ErrReportSender;)Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->agent:Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

    return-object v0
.end method

.method static synthetic access$002(Lcom/felicanetworks/cmnlib/log/ErrReportSender;Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;)Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/cmnlib/log/ErrReportSender;
    .param p1, "x1"    # Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->agent:Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

    return-object p1
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method protected getContext()Lcom/felicanetworks/cmnlib/AppContext;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->context:Lcom/felicanetworks/cmnlib/AppContext;

    return-object v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x6

    return v0
.end method

.method public start(Lcom/felicanetworks/cmnlib/log/LogMgrEventListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "listener"    # Lcom/felicanetworks/cmnlib/log/LogMgrEventListener;
    .param p2, "idm"    # Ljava/lang/String;
    .param p3, "logData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/log/LogMgrException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A listener or logdata is nothing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    if-nez p3, :cond_1

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A listener or logdata is nothing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_1
    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->agent:Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->agent:Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

    invoke-virtual {v0}, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 204
    :cond_2
    new-instance v0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

    iget-object v2, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->context:Lcom/felicanetworks/cmnlib/AppContext;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;-><init>(Lcom/felicanetworks/cmnlib/log/ErrReportSender;Lcom/felicanetworks/cmnlib/AppContext;Lcom/felicanetworks/cmnlib/log/LogMgrEventListener;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->agent:Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

    .line 205
    iget-object v0, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->agent:Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

    invoke-virtual {v0}, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->start()V

    .line 214
    monitor-exit p0

    .line 220
    return-void

    .line 212
    :cond_3
    new-instance v0, Lcom/felicanetworks/cmnlib/log/LogMgrException;

    const-string v1, "Sending error report now."

    invoke-direct {v0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgrException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->agent:Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->agent:Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

    invoke-virtual {v0}, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->cancel()V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->agent:Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :cond_0
    monitor-exit p0

    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

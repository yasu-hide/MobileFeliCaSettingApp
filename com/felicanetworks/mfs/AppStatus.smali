.class public Lcom/felicanetworks/mfs/AppStatus;
.super Ljava/lang/Object;
.source "AppStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfs/AppStatus$State;
    }
.end annotation


# instance fields
.field public chk:I

.field public felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

.field public felicaStatus:I

.field public gpasException:Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;

.field public isNeedUiccInit:Z

.field public isNeedcheckbox:Z

.field public uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

.field public uiccStatus:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lcom/felicanetworks/mfs/AppStatus$State;->READY:Lcom/felicanetworks/mfs/AppStatus$State;

    iput-object v0, p0, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 46
    sget-object v0, Lcom/felicanetworks/mfs/AppStatus$State;->READY:Lcom/felicanetworks/mfs/AppStatus$State;

    iput-object v0, p0, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/felicanetworks/mfs/AppStatus;->chk:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2c

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "AppStatus["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-boolean v1, p0, Lcom/felicanetworks/mfs/AppStatus;->isNeedUiccInit:Z

    if-eqz v1, :cond_0

    const-string v1, "NeedUicc"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    iget-boolean v1, p0, Lcom/felicanetworks/mfs/AppStatus;->isNeedcheckbox:Z

    if-eqz v1, :cond_1

    const-string v1, "Needchkbx"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    iget v1, p0, Lcom/felicanetworks/mfs/AppStatus;->felicaStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Lcom/felicanetworks/mfs/AppStatus;->uiccStatus:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lcom/felicanetworks/mfs/AppStatus;->gpasException:Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    iget v1, p0, Lcom/felicanetworks/mfs/AppStatus;->chk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 77
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 79
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

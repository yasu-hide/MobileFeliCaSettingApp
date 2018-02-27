.class public final enum Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;
.super Ljava/lang/Enum;
.source "CheckInitializeUiccListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;

.field public static final enum ERROR_RESULT_GPAS_ACCESS:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;

.field public static final enum ERROR_RESULT_OTHER:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;

    const-string v1, "ERROR_RESULT_GPAS_ACCESS"

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;->ERROR_RESULT_GPAS_ACCESS:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;

    .line 30
    new-instance v0, Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;

    const-string v1, "ERROR_RESULT_OTHER"

    invoke-direct {v0, v1, v3}, Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;->ERROR_RESULT_OTHER:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;

    sget-object v1, Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;->ERROR_RESULT_GPAS_ACCESS:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;->ERROR_RESULT_OTHER:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;->$VALUES:[Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;->$VALUES:[Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;

    invoke-virtual {v0}, [Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;

    return-object v0
.end method

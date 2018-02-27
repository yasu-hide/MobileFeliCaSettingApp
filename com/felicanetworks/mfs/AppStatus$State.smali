.class public final enum Lcom/felicanetworks/mfs/AppStatus$State;
.super Ljava/lang/Enum;
.source "AppStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfs/AppStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/felicanetworks/mfs/AppStatus$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/felicanetworks/mfs/AppStatus$State;

.field public static final enum CHECK_DONEINIT:Lcom/felicanetworks/mfs/AppStatus$State;

.field public static final enum CHECK_FAILED:Lcom/felicanetworks/mfs/AppStatus$State;

.field public static final enum CHECK_NEEDINIT:Lcom/felicanetworks/mfs/AppStatus$State;

.field public static final enum INIT_CANCEL:Lcom/felicanetworks/mfs/AppStatus$State;

.field public static final enum INIT_FAILED:Lcom/felicanetworks/mfs/AppStatus$State;

.field public static final enum INIT_SUCCESS:Lcom/felicanetworks/mfs/AppStatus$State;

.field public static final enum READY:Lcom/felicanetworks/mfs/AppStatus$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v0, Lcom/felicanetworks/mfs/AppStatus$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v3}, Lcom/felicanetworks/mfs/AppStatus$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/felicanetworks/mfs/AppStatus$State;->READY:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 52
    new-instance v0, Lcom/felicanetworks/mfs/AppStatus$State;

    const-string v1, "CHECK_NEEDINIT"

    invoke-direct {v0, v1, v4}, Lcom/felicanetworks/mfs/AppStatus$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_NEEDINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 54
    new-instance v0, Lcom/felicanetworks/mfs/AppStatus$State;

    const-string v1, "CHECK_DONEINIT"

    invoke-direct {v0, v1, v5}, Lcom/felicanetworks/mfs/AppStatus$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_DONEINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 56
    new-instance v0, Lcom/felicanetworks/mfs/AppStatus$State;

    const-string v1, "CHECK_FAILED"

    invoke-direct {v0, v1, v6}, Lcom/felicanetworks/mfs/AppStatus$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_FAILED:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 58
    new-instance v0, Lcom/felicanetworks/mfs/AppStatus$State;

    const-string v1, "INIT_SUCCESS"

    invoke-direct {v0, v1, v7}, Lcom/felicanetworks/mfs/AppStatus$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_SUCCESS:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 60
    new-instance v0, Lcom/felicanetworks/mfs/AppStatus$State;

    const-string v1, "INIT_CANCEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfs/AppStatus$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_CANCEL:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 62
    new-instance v0, Lcom/felicanetworks/mfs/AppStatus$State;

    const-string v1, "INIT_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfs/AppStatus$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_FAILED:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 48
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v1, Lcom/felicanetworks/mfs/AppStatus$State;->READY:Lcom/felicanetworks/mfs/AppStatus$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_NEEDINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_DONEINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_FAILED:Lcom/felicanetworks/mfs/AppStatus$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_SUCCESS:Lcom/felicanetworks/mfs/AppStatus$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_CANCEL:Lcom/felicanetworks/mfs/AppStatus$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_FAILED:Lcom/felicanetworks/mfs/AppStatus$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/felicanetworks/mfs/AppStatus$State;->$VALUES:[Lcom/felicanetworks/mfs/AppStatus$State;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/felicanetworks/mfs/AppStatus$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lcom/felicanetworks/mfs/AppStatus$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfs/AppStatus$State;

    return-object v0
.end method

.method public static values()[Lcom/felicanetworks/mfs/AppStatus$State;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/felicanetworks/mfs/AppStatus$State;->$VALUES:[Lcom/felicanetworks/mfs/AppStatus$State;

    invoke-virtual {v0}, [Lcom/felicanetworks/mfs/AppStatus$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/felicanetworks/mfs/AppStatus$State;

    return-object v0
.end method

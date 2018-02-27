.class public Lcom/felicanetworks/mfs/MfsAppData;
.super Lcom/felicanetworks/cmnview/AppData;
.source "MfsAppData.java"


# static fields
.field private static appStatus:Lcom/felicanetworks/mfs/AppStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/felicanetworks/mfs/MfsAppData;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/felicanetworks/cmnview/AppData;-><init>()V

    return-void
.end method

.method public static getAppStatus()Lcom/felicanetworks/mfs/AppStatus;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/felicanetworks/mfs/MfsAppData;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    return-object v0
.end method

.method public static setAppStatus(Lcom/felicanetworks/mfs/AppStatus;)V
    .locals 0
    .param p0, "st"    # Lcom/felicanetworks/mfs/AppStatus;

    .prologue
    .line 36
    sput-object p0, Lcom/felicanetworks/mfs/MfsAppData;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    .line 37
    return-void
.end method

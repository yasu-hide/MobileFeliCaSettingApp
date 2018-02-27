.class final Lcom/felicanetworks/cmnctrl/database/DatabaseAccess$ErrorLogColumns;
.super Ljava/lang/Object;
.source "DatabaseAccess.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ErrorLogColumns"
.end annotation


# static fields
.field private static final DATE:Ljava/lang/String; = "Date"

.field private static final IDM:Ljava/lang/String; = "Idm"

.field private static final LOGMSG:Ljava/lang/String; = "LogMessage"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

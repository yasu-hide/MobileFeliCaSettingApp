.class public Lcom/felicanetworks/mfs/MobileFeliCaSettings$Result;
.super Ljava/lang/Object;
.source "MobileFeliCaSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfs/MobileFeliCaSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# static fields
.field public static final ALREADYINIT:I = 0x2

.field public static final CANCEL:I = 0x0

.field public static final FAILED_BADSTART:I = 0x66

.field public static final FAILED_COMMUNICATIONERROR:I = 0x6b

.field public static final FAILED_FATALERROR:I = 0x6e

.field public static final FAILED_FELICAINUSE:I = 0x68

.field public static final FAILED_FELICALOCK:I = 0x69

.field public static final FAILED_GPASERROR:I = 0x79

.field public static final FAILED_INIT:I = 0x6a

.field public static final FAILED_OVERCROWDING:I = 0x6c

.field public static final FAILED_SERVERMAINTENANCE:I = 0x6d

.field public static final SUCCESS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

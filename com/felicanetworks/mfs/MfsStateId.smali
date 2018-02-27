.class public Lcom/felicanetworks/mfs/MfsStateId;
.super Lcom/felicanetworks/cmnview/TransferStateId;
.source "MfsStateId.java"


# static fields
.field public static final COMMANDID_ALREADYINIT:I = 0x5

.field public static final COMMANDID_CANCELINIT:I = 0x9

.field public static final COMMANDID_COMMUNICATIONERROR:I = 0xb

.field public static final COMMANDID_COMPLETEINIT:I = 0x4

.field public static final COMMANDID_CONFIRMINIT:I = 0x2

.field public static final COMMANDID_FAILEDINIT:I = 0xa

.field public static final COMMANDID_FELICAINUSE:I = 0x6

.field public static final COMMANDID_FELICAINUSEPROCESSING:I = 0x11

.field public static final COMMANDID_FELICALOCK:I = 0x7

.field public static final COMMANDID_FELICALOCKPROCESSING:I = 0x12

.field public static final COMMANDID_FELICATIMEOUT:I = 0x16

.field public static final COMMANDID_GPAS_ERROR:I = 0x1c

.field public static final COMMANDID_LOGSENDING:I = 0xf

.field public static final COMMANDID_MFCOTHER:I = 0x17

.field public static final COMMANDID_MFCPERMINSPECT:I = 0x15

.field public static final COMMANDID_OVERCROWDINGERROR:I = 0xc

.field public static final COMMANDID_RESULT_SUCCESS_CANCEL:I = 0x1e

.field public static final COMMANDID_RESULT_SUCCESS_FAILED:I = 0x1f

.field public static final COMMANDID_RESULT_SUCCESS_GPASERROR:I = 0x22

.field public static final COMMANDID_RESULT_UICCCANCEL:I = 0x20

.field public static final COMMANDID_RESULT_UICCFAILED:I = 0x21

.field public static final COMMANDID_RUNNINGINIT:I = 0x3

.field public static final COMMANDID_SERVERMAINTENANCEERROR:I = 0xd

.field public static final COMMANDID_SHOW_RESULT:I = 0x1b

.field public static final COMMANDID_STARTING:I = 0x1

.field public static final COMMANDID_TRANS_SET_RESULT:I = 0x1a

.field public static final COMMANDID_UICCINIT:I = 0x19

.field public static final COMMANDID_UICCSTART:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/felicanetworks/cmnview/TransferStateId;-><init>()V

    return-void
.end method

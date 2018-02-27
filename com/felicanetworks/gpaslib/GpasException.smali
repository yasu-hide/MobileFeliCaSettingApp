.class public Lcom/felicanetworks/gpaslib/GpasException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final ID_ENVIRONMENT_SPECIFIED_PARAMETER_ERROR:I = 0xe

.field public static final ID_EXCLUSIVE_ACTIVATE_PAYMENT_SERVICE_ERROR:I = 0xc

.field public static final ID_GET_APDU_MANAGER_ERROR:I = 0xb

.field public static final ID_GET_CONTACTLESS_SERVICE_ERROR:I = 0x9

.field public static final ID_GET_FACTORY_ERROR:I = 0x5

.field public static final ID_GET_GPAS_SESSION_ERROR:I = 0x7

.field public static final ID_GET_PAYMENT_SERVICE_MANAGER_ERROR:I = 0xa

.field public static final ID_ILLEGAL_STATE_ERROR:I = 0x2

.field public static final ID_IO_ERROR:I = 0x3

.field public static final ID_OPEN_CHANNEL_ERROR:I = 0x10

.field public static final ID_PARSE_TLV_ERROR:I = 0xf

.field public static final ID_SECURITY_ERROR:I = 0x4

.field public static final ID_UNKNOWN_ERROR:I = 0x1

.field public static final TYPE_AID_TAG_NOT_FOUND:I = 0x25

.field public static final TYPE_APPLICATION_LIFECYCLE_STATE_TAG_NOT_FOUND:I = 0x26

.field public static final TYPE_APPLICATION_NOT_FOUND:I = 0x14

.field public static final TYPE_APPLICATION_TEMPLATE_TAG_NOT_FOUND:I = 0x24

.field public static final TYPE_APPLICATION_TYPE_TAG_NOT_FOUND:I = 0x28

.field public static final TYPE_CHANNEL_NOT_OPENED:I = 0x18

.field public static final TYPE_CONTACTLESS_ACCESS_STATUS_TAG_NOT_FOUND:I = 0x27

.field public static final TYPE_ENVIRONMENT_SPECIFIC_PARAMETER_UNSUPPORTED:I = 0x12

.field public static final TYPE_FUNCTION_NOT_SUPPORTED:I = 0x29

.field public static final TYPE_GET_FAILED:I = 0xa

.field public static final TYPE_GPAS_IDENTIFICATION_CODE_UNSUPPORTED:I = 0x10

.field public static final TYPE_GPAS_LIBRARY_UNSUPPORTED:I = 0x3

.field public static final TYPE_GPAS_LIB_INIT_TIMEOUT_OCCURRED:I = 0xb

.field public static final TYPE_GPAS_LIB_SHUTDOWN:I = 0x2

.field public static final TYPE_GP_CARD_ACCESS_TIMEOUT_OCCURRED:I = 0xc

.field public static final TYPE_ILLEGAL_SERVICE_TYPE_ERROR:I = 0x19

.field public static final TYPE_INTERNAL_ERROR:I = 0x1

.field public static final TYPE_INVALID_CODE:I = 0xf

.field public static final TYPE_INVALID_FORMAT:I = 0xe

.field public static final TYPE_OPEN_CHANNEL_FAILED:I = 0x17

.field public static final TYPE_OPEN_SESSION_FAILED:I = 0x15

.field public static final TYPE_READER_NOT_FOUND:I = 0x23

.field public static final TYPE_SERVICE_NOT_FOUND:I = 0x13

.field public static final TYPE_SESSION_NOT_OPENED:I = 0x16

.field public static final TYPE_SE_ABSENT:I = 0x4

.field public static final TYPE_SE_ACCESS_FAILED:I = 0x9

.field public static final TYPE_SE_ISSUER_UNMATCHED:I = 0x7

.field public static final TYPE_SE_LOCKED:I = 0x6

.field public static final TYPE_SE_UNINITIALIZED:I = 0x8

.field public static final TYPE_SE_UNSUPPORTED:I = 0x5

.field public static final TYPE_TERMINAL_PROVIDER_IDENTIFICATION_CODE_UNSUPPORTED:I = 0x11

.field public static final TYPE_TLV_ILLEGAL_DATA:I = 0x21

.field public static final TYPE_TLV_READ_LENGTH_FAILED:I = 0x1f

.field public static final TYPE_TLV_READ_TAG_FAILED:I = 0x1e

.field public static final TYPE_TLV_READ_VALUE_FAILED:I = 0x20

.field public static final TYPE_TLV_UNSUPPORTED_DATA:I = 0x22

.field public static final TYPE_TSM_CLIENT_INIT_TIMEOUT_OCCURRED:I = 0xd

.field public static final TYPE_USES_PERMISSION_NOT_DEFINED:I = 0x2a

.field protected static final serialVersionUID:J = -0x41254e647ac5cc1cL


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "type"    # I

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 170
    iput p1, p0, Lcom/felicanetworks/gpaslib/GpasException;->a:I

    .line 171
    iput p2, p0, Lcom/felicanetworks/gpaslib/GpasException;->b:I

    .line 172
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 186
    iput p1, p0, Lcom/felicanetworks/gpaslib/GpasException;->a:I

    .line 187
    iput p2, p0, Lcom/felicanetworks/gpaslib/GpasException;->b:I

    .line 188
    return-void
.end method

.method public constructor <init>(IILjava/lang/Throwable;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 201
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 202
    iput p1, p0, Lcom/felicanetworks/gpaslib/GpasException;->a:I

    .line 203
    iput p2, p0, Lcom/felicanetworks/gpaslib/GpasException;->b:I

    .line 204
    return-void
.end method


# virtual methods
.method public getID()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/felicanetworks/gpaslib/GpasException;->a:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/felicanetworks/gpaslib/GpasException;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "GpasException{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 240
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    iget v1, p0, Lcom/felicanetworks/gpaslib/GpasException;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    const-string v1, ",type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    iget v1, p0, Lcom/felicanetworks/gpaslib/GpasException;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    const-string v1, ",message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    invoke-virtual {p0}, Lcom/felicanetworks/gpaslib/GpasException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/felicanetworks/gpaslib/GpasContactlessService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STATE_CL_ACTIVATED:B = 0x1t

.field public static final STATE_CL_DEACTIVATED:B = 0x0t

.field public static final STATE_CL_MASK:B = -0x7ft

.field public static final STATE_CL_NON_ACTIVATABLE:B = -0x80t

.field public static final STATE_LIFE_CYCLE_APPLICATION_SPECIFIC_STATE:B = 0x7t

.field public static final STATE_LIFE_CYCLE_INSTALLED:B = 0x3t

.field public static final STATE_LIFE_CYCLE_LOCKED:B = -0x7dt

.field public static final STATE_LIFE_CYCLE_SELECTABLE:B = 0x7t

.field public static final TYPE_SERVICE_NORMAL:I = 0x0

.field public static final TYPE_SERVICE_PAYMENT:I = 0x1


# instance fields
.field private a:[B

.field private b:I

.field private c:B

.field private d:B


# direct methods
.method public constructor <init>([BIBB)V
    .locals 1
    .param p1, "aid"    # [B
    .param p2, "serviceType"    # I
    .param p3, "lifeCycleState"    # B
    .param p4, "contactlessActivationState"    # B

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    if-nez p1, :cond_0

    .line 95
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/GpasContactlessService;->a:[B

    .line 99
    :goto_0
    iput p2, p0, Lcom/felicanetworks/gpaslib/GpasContactlessService;->b:I

    .line 100
    iput-byte p3, p0, Lcom/felicanetworks/gpaslib/GpasContactlessService;->c:B

    .line 101
    iput-byte p4, p0, Lcom/felicanetworks/gpaslib/GpasContactlessService;->d:B

    .line 102
    return-void

    .line 97
    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/felicanetworks/gpaslib/GpasContactlessService;->a:[B

    goto :goto_0
.end method


# virtual methods
.method public getAid()[B
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/felicanetworks/gpaslib/GpasContactlessService;->a:[B

    return-object v0
.end method

.method public getContactlessActivationState()B
    .locals 1

    .prologue
    .line 160
    iget-byte v0, p0, Lcom/felicanetworks/gpaslib/GpasContactlessService;->d:B

    return v0
.end method

.method public getLifeCycleState()B
    .locals 1

    .prologue
    .line 148
    iget-byte v0, p0, Lcom/felicanetworks/gpaslib/GpasContactlessService;->c:B

    return v0
.end method

.method public getServiceType()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/felicanetworks/gpaslib/GpasContactlessService;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 175
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "GpasContactlessService{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 176
    const-string v1, "aid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    iget-object v1, p0, Lcom/felicanetworks/gpaslib/GpasContactlessService;->a:[B

    invoke-static {v1}, Lcom/felicanetworks/gpaslib/common/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    const-string v1, ",serviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    iget v1, p0, Lcom/felicanetworks/gpaslib/GpasContactlessService;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    const-string v1, ",lifeCycleState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    new-array v1, v4, [B

    iget-byte v2, p0, Lcom/felicanetworks/gpaslib/GpasContactlessService;->c:B

    aput-byte v2, v1, v3

    invoke-static {v1}, Lcom/felicanetworks/gpaslib/common/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    const-string v1, ",contactlessActivationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    new-array v1, v4, [B

    iget-byte v2, p0, Lcom/felicanetworks/gpaslib/GpasContactlessService;->d:B

    aput-byte v2, v1, v3

    invoke-static {v1}, Lcom/felicanetworks/gpaslib/common/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

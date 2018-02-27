.class public Lcom/felicanetworks/mfc/util/LogMgr;
.super Ljava/lang/Object;
.source "LogMgr.java"


# static fields
.field public static final API:I = 0x3

.field public static final CLS:I = 0x5

.field public static final DBG:I = 0x6

.field public static final ERR:I = 0x1

.field public static final PKG:I = 0x4

.field private static final S_API:Ljava/lang/String; = "[API]"

.field private static final S_CLS:Ljava/lang/String; = "[CLS]"

.field private static final S_DBG:Ljava/lang/String; = "[DBG]"

.field private static final S_ERR:Ljava/lang/String; = "[ERR]"

.field private static final S_PKG:Ljava/lang/String; = "[PKG]"

.field private static final S_TRC:Ljava/lang/String; = "[TRC]"

.field private static final S_UNK:Ljava/lang/String; = "[UNK]"

.field private static final S_WAR:Ljava/lang/String; = "[WAR]"

.field public static final TRC:I = 0x7

.field public static final WAR:I = 0x2

.field protected static bUseHomeBrewingFromat:Z

.field private static final enable:Z

.field private static final enableClass:Z

.field static enableClassName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static level:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 50
    const/4 v0, 0x2

    sput v0, Lcom/felicanetworks/mfc/util/LogMgr;->level:I

    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcom/felicanetworks/mfc/util/LogMgr;->bUseHomeBrewingFromat:Z

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->enableClassName:Ljava/util/Map;

    .line 67
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->enableClassName:Ljava/util/Map;

    const-string v1, "com.felicanetworks.mfc.Felica"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->enableClassName:Ljava/util/Map;

    const-string v1, "com.felicanetworks.mfc.FSC"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->enableClassName:Ljava/util/Map;

    const-string v1, "com.felicanetworks.mfc.PushSegmentParcelableWrapper"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->enableClassName:Ljava/util/Map;

    const-string v1, "com.felicanetworks.mfc.PushSegmentParcelableWrapper$1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ByteArray2String([B)Ljava/lang/String;
    .locals 11
    .param p0, "data"    # [B

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/16 v8, 0x40

    const/4 v7, 0x0

    const/16 v6, 0x2c

    .line 457
    const/16 v4, 0x100

    new-array v3, v4, [Ljava/lang/String;

    .line 458
    const-string v4, "0x00"

    aput-object v4, v3, v7

    const-string v4, "0x01"

    aput-object v4, v3, v9

    const-string v4, "0x02"

    aput-object v4, v3, v10

    const/4 v4, 0x3

    const-string v5, "0x03"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "0x04"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "0x05"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "0x06"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "0x07"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "0x08"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "0x09"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "0x0A"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "0x0B"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "0x0C"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "0x0D"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "0x0E"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "0x0F"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    .line 459
    const-string v5, "0x10"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const-string v5, "0x11"

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string v5, "0x12"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    const-string v5, "0x13"

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-string v5, "0x14"

    aput-object v5, v3, v4

    const/16 v4, 0x15

    const-string v5, "0x15"

    aput-object v5, v3, v4

    const/16 v4, 0x16

    const-string v5, "0x16"

    aput-object v5, v3, v4

    const/16 v4, 0x17

    const-string v5, "0x17"

    aput-object v5, v3, v4

    const/16 v4, 0x18

    const-string v5, "0x18"

    aput-object v5, v3, v4

    const/16 v4, 0x19

    const-string v5, "0x19"

    aput-object v5, v3, v4

    const/16 v4, 0x1a

    const-string v5, "0x1A"

    aput-object v5, v3, v4

    const/16 v4, 0x1b

    const-string v5, "0x1B"

    aput-object v5, v3, v4

    const/16 v4, 0x1c

    const-string v5, "0x1C"

    aput-object v5, v3, v4

    const/16 v4, 0x1d

    const-string v5, "0x1D"

    aput-object v5, v3, v4

    const/16 v4, 0x1e

    const-string v5, "0x1E"

    aput-object v5, v3, v4

    const/16 v4, 0x1f

    const-string v5, "0x1F"

    aput-object v5, v3, v4

    const/16 v4, 0x20

    .line 460
    const-string v5, "0x20"

    aput-object v5, v3, v4

    const/16 v4, 0x21

    const-string v5, "0x21"

    aput-object v5, v3, v4

    const/16 v4, 0x22

    const-string v5, "0x22"

    aput-object v5, v3, v4

    const/16 v4, 0x23

    const-string v5, "0x23"

    aput-object v5, v3, v4

    const/16 v4, 0x24

    const-string v5, "0x24"

    aput-object v5, v3, v4

    const/16 v4, 0x25

    const-string v5, "0x25"

    aput-object v5, v3, v4

    const/16 v4, 0x26

    const-string v5, "0x26"

    aput-object v5, v3, v4

    const/16 v4, 0x27

    const-string v5, "0x27"

    aput-object v5, v3, v4

    const/16 v4, 0x28

    const-string v5, "0x28"

    aput-object v5, v3, v4

    const/16 v4, 0x29

    const-string v5, "0x29"

    aput-object v5, v3, v4

    const/16 v4, 0x2a

    const-string v5, "0x2A"

    aput-object v5, v3, v4

    const/16 v4, 0x2b

    const-string v5, "0x2B"

    aput-object v5, v3, v4

    const-string v4, "0x2C"

    aput-object v4, v3, v6

    const/16 v4, 0x2d

    const-string v5, "0x2D"

    aput-object v5, v3, v4

    const/16 v4, 0x2e

    const-string v5, "0x2E"

    aput-object v5, v3, v4

    const/16 v4, 0x2f

    const-string v5, "0x2F"

    aput-object v5, v3, v4

    const/16 v4, 0x30

    .line 461
    const-string v5, "0x30"

    aput-object v5, v3, v4

    const/16 v4, 0x31

    const-string v5, "0x31"

    aput-object v5, v3, v4

    const/16 v4, 0x32

    const-string v5, "0x32"

    aput-object v5, v3, v4

    const/16 v4, 0x33

    const-string v5, "0x33"

    aput-object v5, v3, v4

    const/16 v4, 0x34

    const-string v5, "0x34"

    aput-object v5, v3, v4

    const/16 v4, 0x35

    const-string v5, "0x35"

    aput-object v5, v3, v4

    const/16 v4, 0x36

    const-string v5, "0x36"

    aput-object v5, v3, v4

    const/16 v4, 0x37

    const-string v5, "0x37"

    aput-object v5, v3, v4

    const/16 v4, 0x38

    const-string v5, "0x38"

    aput-object v5, v3, v4

    const/16 v4, 0x39

    const-string v5, "0x39"

    aput-object v5, v3, v4

    const/16 v4, 0x3a

    const-string v5, "0x3A"

    aput-object v5, v3, v4

    const/16 v4, 0x3b

    const-string v5, "0x3B"

    aput-object v5, v3, v4

    const/16 v4, 0x3c

    const-string v5, "0x3C"

    aput-object v5, v3, v4

    const/16 v4, 0x3d

    const-string v5, "0x3D"

    aput-object v5, v3, v4

    const/16 v4, 0x3e

    const-string v5, "0x3E"

    aput-object v5, v3, v4

    const/16 v4, 0x3f

    const-string v5, "0x3F"

    aput-object v5, v3, v4

    .line 462
    const-string v4, "0x40"

    aput-object v4, v3, v8

    const/16 v4, 0x41

    const-string v5, "0x41"

    aput-object v5, v3, v4

    const/16 v4, 0x42

    const-string v5, "0x42"

    aput-object v5, v3, v4

    const/16 v4, 0x43

    const-string v5, "0x43"

    aput-object v5, v3, v4

    const/16 v4, 0x44

    const-string v5, "0x44"

    aput-object v5, v3, v4

    const/16 v4, 0x45

    const-string v5, "0x45"

    aput-object v5, v3, v4

    const/16 v4, 0x46

    const-string v5, "0x46"

    aput-object v5, v3, v4

    const/16 v4, 0x47

    const-string v5, "0x47"

    aput-object v5, v3, v4

    const/16 v4, 0x48

    const-string v5, "0x48"

    aput-object v5, v3, v4

    const/16 v4, 0x49

    const-string v5, "0x49"

    aput-object v5, v3, v4

    const/16 v4, 0x4a

    const-string v5, "0x4A"

    aput-object v5, v3, v4

    const/16 v4, 0x4b

    const-string v5, "0x4B"

    aput-object v5, v3, v4

    const/16 v4, 0x4c

    const-string v5, "0x4C"

    aput-object v5, v3, v4

    const/16 v4, 0x4d

    const-string v5, "0x4D"

    aput-object v5, v3, v4

    const/16 v4, 0x4e

    const-string v5, "0x4E"

    aput-object v5, v3, v4

    const/16 v4, 0x4f

    const-string v5, "0x4F"

    aput-object v5, v3, v4

    const/16 v4, 0x50

    .line 463
    const-string v5, "0x50"

    aput-object v5, v3, v4

    const/16 v4, 0x51

    const-string v5, "0x51"

    aput-object v5, v3, v4

    const/16 v4, 0x52

    const-string v5, "0x52"

    aput-object v5, v3, v4

    const/16 v4, 0x53

    const-string v5, "0x53"

    aput-object v5, v3, v4

    const/16 v4, 0x54

    const-string v5, "0x54"

    aput-object v5, v3, v4

    const/16 v4, 0x55

    const-string v5, "0x55"

    aput-object v5, v3, v4

    const/16 v4, 0x56

    const-string v5, "0x56"

    aput-object v5, v3, v4

    const/16 v4, 0x57

    const-string v5, "0x57"

    aput-object v5, v3, v4

    const/16 v4, 0x58

    const-string v5, "0x58"

    aput-object v5, v3, v4

    const/16 v4, 0x59

    const-string v5, "0x59"

    aput-object v5, v3, v4

    const/16 v4, 0x5a

    const-string v5, "0x5A"

    aput-object v5, v3, v4

    const/16 v4, 0x5b

    const-string v5, "0x5B"

    aput-object v5, v3, v4

    const/16 v4, 0x5c

    const-string v5, "0x5C"

    aput-object v5, v3, v4

    const/16 v4, 0x5d

    const-string v5, "0x5D"

    aput-object v5, v3, v4

    const/16 v4, 0x5e

    const-string v5, "0x5E"

    aput-object v5, v3, v4

    const/16 v4, 0x5f

    const-string v5, "0x5F"

    aput-object v5, v3, v4

    const/16 v4, 0x60

    .line 464
    const-string v5, "0x60"

    aput-object v5, v3, v4

    const/16 v4, 0x61

    const-string v5, "0x61"

    aput-object v5, v3, v4

    const/16 v4, 0x62

    const-string v5, "0x62"

    aput-object v5, v3, v4

    const/16 v4, 0x63

    const-string v5, "0x63"

    aput-object v5, v3, v4

    const/16 v4, 0x64

    const-string v5, "0x64"

    aput-object v5, v3, v4

    const/16 v4, 0x65

    const-string v5, "0x65"

    aput-object v5, v3, v4

    const/16 v4, 0x66

    const-string v5, "0x66"

    aput-object v5, v3, v4

    const/16 v4, 0x67

    const-string v5, "0x67"

    aput-object v5, v3, v4

    const/16 v4, 0x68

    const-string v5, "0x68"

    aput-object v5, v3, v4

    const/16 v4, 0x69

    const-string v5, "0x69"

    aput-object v5, v3, v4

    const/16 v4, 0x6a

    const-string v5, "0x6A"

    aput-object v5, v3, v4

    const/16 v4, 0x6b

    const-string v5, "0x6B"

    aput-object v5, v3, v4

    const/16 v4, 0x6c

    const-string v5, "0x6C"

    aput-object v5, v3, v4

    const/16 v4, 0x6d

    const-string v5, "0x6D"

    aput-object v5, v3, v4

    const/16 v4, 0x6e

    const-string v5, "0x6E"

    aput-object v5, v3, v4

    const/16 v4, 0x6f

    const-string v5, "0x6F"

    aput-object v5, v3, v4

    const/16 v4, 0x70

    .line 465
    const-string v5, "0x70"

    aput-object v5, v3, v4

    const/16 v4, 0x71

    const-string v5, "0x71"

    aput-object v5, v3, v4

    const/16 v4, 0x72

    const-string v5, "0x72"

    aput-object v5, v3, v4

    const/16 v4, 0x73

    const-string v5, "0x73"

    aput-object v5, v3, v4

    const/16 v4, 0x74

    const-string v5, "0x74"

    aput-object v5, v3, v4

    const/16 v4, 0x75

    const-string v5, "0x75"

    aput-object v5, v3, v4

    const/16 v4, 0x76

    const-string v5, "0x76"

    aput-object v5, v3, v4

    const/16 v4, 0x77

    const-string v5, "0x77"

    aput-object v5, v3, v4

    const/16 v4, 0x78

    const-string v5, "0x78"

    aput-object v5, v3, v4

    const/16 v4, 0x79

    const-string v5, "0x79"

    aput-object v5, v3, v4

    const/16 v4, 0x7a

    const-string v5, "0x7A"

    aput-object v5, v3, v4

    const/16 v4, 0x7b

    const-string v5, "0x7B"

    aput-object v5, v3, v4

    const/16 v4, 0x7c

    const-string v5, "0x7C"

    aput-object v5, v3, v4

    const/16 v4, 0x7d

    const-string v5, "0x7D"

    aput-object v5, v3, v4

    const/16 v4, 0x7e

    const-string v5, "0x7E"

    aput-object v5, v3, v4

    const/16 v4, 0x7f

    const-string v5, "0x7F"

    aput-object v5, v3, v4

    const/16 v4, 0x80

    .line 466
    const-string v5, "0x80"

    aput-object v5, v3, v4

    const/16 v4, 0x81

    const-string v5, "0x81"

    aput-object v5, v3, v4

    const/16 v4, 0x82

    const-string v5, "0x82"

    aput-object v5, v3, v4

    const/16 v4, 0x83

    const-string v5, "0x83"

    aput-object v5, v3, v4

    const/16 v4, 0x84

    const-string v5, "0x84"

    aput-object v5, v3, v4

    const/16 v4, 0x85

    const-string v5, "0x85"

    aput-object v5, v3, v4

    const/16 v4, 0x86

    const-string v5, "0x86"

    aput-object v5, v3, v4

    const/16 v4, 0x87

    const-string v5, "0x87"

    aput-object v5, v3, v4

    const/16 v4, 0x88

    const-string v5, "0x88"

    aput-object v5, v3, v4

    const/16 v4, 0x89

    const-string v5, "0x89"

    aput-object v5, v3, v4

    const/16 v4, 0x8a

    const-string v5, "0x8A"

    aput-object v5, v3, v4

    const/16 v4, 0x8b

    const-string v5, "0x8B"

    aput-object v5, v3, v4

    const/16 v4, 0x8c

    const-string v5, "0x8C"

    aput-object v5, v3, v4

    const/16 v4, 0x8d

    const-string v5, "0x8D"

    aput-object v5, v3, v4

    const/16 v4, 0x8e

    const-string v5, "0x8E"

    aput-object v5, v3, v4

    const/16 v4, 0x8f

    const-string v5, "0x8F"

    aput-object v5, v3, v4

    const/16 v4, 0x90

    .line 467
    const-string v5, "0x90"

    aput-object v5, v3, v4

    const/16 v4, 0x91

    const-string v5, "0x91"

    aput-object v5, v3, v4

    const/16 v4, 0x92

    const-string v5, "0x92"

    aput-object v5, v3, v4

    const/16 v4, 0x93

    const-string v5, "0x93"

    aput-object v5, v3, v4

    const/16 v4, 0x94

    const-string v5, "0x94"

    aput-object v5, v3, v4

    const/16 v4, 0x95

    const-string v5, "0x95"

    aput-object v5, v3, v4

    const/16 v4, 0x96

    const-string v5, "0x96"

    aput-object v5, v3, v4

    const/16 v4, 0x97

    const-string v5, "0x97"

    aput-object v5, v3, v4

    const/16 v4, 0x98

    const-string v5, "0x98"

    aput-object v5, v3, v4

    const/16 v4, 0x99

    const-string v5, "0x99"

    aput-object v5, v3, v4

    const/16 v4, 0x9a

    const-string v5, "0x9A"

    aput-object v5, v3, v4

    const/16 v4, 0x9b

    const-string v5, "0x9B"

    aput-object v5, v3, v4

    const/16 v4, 0x9c

    const-string v5, "0x9C"

    aput-object v5, v3, v4

    const/16 v4, 0x9d

    const-string v5, "0x9D"

    aput-object v5, v3, v4

    const/16 v4, 0x9e

    const-string v5, "0x9E"

    aput-object v5, v3, v4

    const/16 v4, 0x9f

    const-string v5, "0x9F"

    aput-object v5, v3, v4

    const/16 v4, 0xa0

    .line 468
    const-string v5, "0xA0"

    aput-object v5, v3, v4

    const/16 v4, 0xa1

    const-string v5, "0xA1"

    aput-object v5, v3, v4

    const/16 v4, 0xa2

    const-string v5, "0xA2"

    aput-object v5, v3, v4

    const/16 v4, 0xa3

    const-string v5, "0xA3"

    aput-object v5, v3, v4

    const/16 v4, 0xa4

    const-string v5, "0xA4"

    aput-object v5, v3, v4

    const/16 v4, 0xa5

    const-string v5, "0xA5"

    aput-object v5, v3, v4

    const/16 v4, 0xa6

    const-string v5, "0xA6"

    aput-object v5, v3, v4

    const/16 v4, 0xa7

    const-string v5, "0xA7"

    aput-object v5, v3, v4

    const/16 v4, 0xa8

    const-string v5, "0xA8"

    aput-object v5, v3, v4

    const/16 v4, 0xa9

    const-string v5, "0xA9"

    aput-object v5, v3, v4

    const/16 v4, 0xaa

    const-string v5, "0xAA"

    aput-object v5, v3, v4

    const/16 v4, 0xab

    const-string v5, "0xAB"

    aput-object v5, v3, v4

    const/16 v4, 0xac

    const-string v5, "0xAC"

    aput-object v5, v3, v4

    const/16 v4, 0xad

    const-string v5, "0xAD"

    aput-object v5, v3, v4

    const/16 v4, 0xae

    const-string v5, "0xAE"

    aput-object v5, v3, v4

    const/16 v4, 0xaf

    const-string v5, "0xAF"

    aput-object v5, v3, v4

    const/16 v4, 0xb0

    .line 469
    const-string v5, "0xB0"

    aput-object v5, v3, v4

    const/16 v4, 0xb1

    const-string v5, "0xB1"

    aput-object v5, v3, v4

    const/16 v4, 0xb2

    const-string v5, "0xB2"

    aput-object v5, v3, v4

    const/16 v4, 0xb3

    const-string v5, "0xB3"

    aput-object v5, v3, v4

    const/16 v4, 0xb4

    const-string v5, "0xB4"

    aput-object v5, v3, v4

    const/16 v4, 0xb5

    const-string v5, "0xB5"

    aput-object v5, v3, v4

    const/16 v4, 0xb6

    const-string v5, "0xB6"

    aput-object v5, v3, v4

    const/16 v4, 0xb7

    const-string v5, "0xB7"

    aput-object v5, v3, v4

    const/16 v4, 0xb8

    const-string v5, "0xB8"

    aput-object v5, v3, v4

    const/16 v4, 0xb9

    const-string v5, "0xB9"

    aput-object v5, v3, v4

    const/16 v4, 0xba

    const-string v5, "0xBA"

    aput-object v5, v3, v4

    const/16 v4, 0xbb

    const-string v5, "0xBB"

    aput-object v5, v3, v4

    const/16 v4, 0xbc

    const-string v5, "0xBC"

    aput-object v5, v3, v4

    const/16 v4, 0xbd

    const-string v5, "0xBD"

    aput-object v5, v3, v4

    const/16 v4, 0xbe

    const-string v5, "0xBE"

    aput-object v5, v3, v4

    const/16 v4, 0xbf

    const-string v5, "0xBF"

    aput-object v5, v3, v4

    const/16 v4, 0xc0

    .line 470
    const-string v5, "0xC0"

    aput-object v5, v3, v4

    const/16 v4, 0xc1

    const-string v5, "0xC1"

    aput-object v5, v3, v4

    const/16 v4, 0xc2

    const-string v5, "0xC2"

    aput-object v5, v3, v4

    const/16 v4, 0xc3

    const-string v5, "0xC3"

    aput-object v5, v3, v4

    const/16 v4, 0xc4

    const-string v5, "0xC4"

    aput-object v5, v3, v4

    const/16 v4, 0xc5

    const-string v5, "0xC5"

    aput-object v5, v3, v4

    const/16 v4, 0xc6

    const-string v5, "0xC6"

    aput-object v5, v3, v4

    const/16 v4, 0xc7

    const-string v5, "0xC7"

    aput-object v5, v3, v4

    const/16 v4, 0xc8

    const-string v5, "0xC8"

    aput-object v5, v3, v4

    const/16 v4, 0xc9

    const-string v5, "0xC9"

    aput-object v5, v3, v4

    const/16 v4, 0xca

    const-string v5, "0xCA"

    aput-object v5, v3, v4

    const/16 v4, 0xcb

    const-string v5, "0xCB"

    aput-object v5, v3, v4

    const/16 v4, 0xcc

    const-string v5, "0xCC"

    aput-object v5, v3, v4

    const/16 v4, 0xcd

    const-string v5, "0xCD"

    aput-object v5, v3, v4

    const/16 v4, 0xce

    const-string v5, "0xCE"

    aput-object v5, v3, v4

    const/16 v4, 0xcf

    const-string v5, "0xCF"

    aput-object v5, v3, v4

    const/16 v4, 0xd0

    .line 471
    const-string v5, "0xD0"

    aput-object v5, v3, v4

    const/16 v4, 0xd1

    const-string v5, "0xD1"

    aput-object v5, v3, v4

    const/16 v4, 0xd2

    const-string v5, "0xD2"

    aput-object v5, v3, v4

    const/16 v4, 0xd3

    const-string v5, "0xD3"

    aput-object v5, v3, v4

    const/16 v4, 0xd4

    const-string v5, "0xD4"

    aput-object v5, v3, v4

    const/16 v4, 0xd5

    const-string v5, "0xD5"

    aput-object v5, v3, v4

    const/16 v4, 0xd6

    const-string v5, "0xD6"

    aput-object v5, v3, v4

    const/16 v4, 0xd7

    const-string v5, "0xD7"

    aput-object v5, v3, v4

    const/16 v4, 0xd8

    const-string v5, "0xD8"

    aput-object v5, v3, v4

    const/16 v4, 0xd9

    const-string v5, "0xD9"

    aput-object v5, v3, v4

    const/16 v4, 0xda

    const-string v5, "0xDA"

    aput-object v5, v3, v4

    const/16 v4, 0xdb

    const-string v5, "0xDB"

    aput-object v5, v3, v4

    const/16 v4, 0xdc

    const-string v5, "0xDC"

    aput-object v5, v3, v4

    const/16 v4, 0xdd

    const-string v5, "0xDD"

    aput-object v5, v3, v4

    const/16 v4, 0xde

    const-string v5, "0xDE"

    aput-object v5, v3, v4

    const/16 v4, 0xdf

    const-string v5, "0xDF"

    aput-object v5, v3, v4

    const/16 v4, 0xe0

    .line 472
    const-string v5, "0xE0"

    aput-object v5, v3, v4

    const/16 v4, 0xe1

    const-string v5, "0xE1"

    aput-object v5, v3, v4

    const/16 v4, 0xe2

    const-string v5, "0xE2"

    aput-object v5, v3, v4

    const/16 v4, 0xe3

    const-string v5, "0xE3"

    aput-object v5, v3, v4

    const/16 v4, 0xe4

    const-string v5, "0xE4"

    aput-object v5, v3, v4

    const/16 v4, 0xe5

    const-string v5, "0xE5"

    aput-object v5, v3, v4

    const/16 v4, 0xe6

    const-string v5, "0xE6"

    aput-object v5, v3, v4

    const/16 v4, 0xe7

    const-string v5, "0xE7"

    aput-object v5, v3, v4

    const/16 v4, 0xe8

    const-string v5, "0xE8"

    aput-object v5, v3, v4

    const/16 v4, 0xe9

    const-string v5, "0xE9"

    aput-object v5, v3, v4

    const/16 v4, 0xea

    const-string v5, "0xEA"

    aput-object v5, v3, v4

    const/16 v4, 0xeb

    const-string v5, "0xEB"

    aput-object v5, v3, v4

    const/16 v4, 0xec

    const-string v5, "0xEC"

    aput-object v5, v3, v4

    const/16 v4, 0xed

    const-string v5, "0xED"

    aput-object v5, v3, v4

    const/16 v4, 0xee

    const-string v5, "0xEE"

    aput-object v5, v3, v4

    const/16 v4, 0xef

    const-string v5, "0xEF"

    aput-object v5, v3, v4

    const/16 v4, 0xf0

    .line 473
    const-string v5, "0xF0"

    aput-object v5, v3, v4

    const/16 v4, 0xf1

    const-string v5, "0xF1"

    aput-object v5, v3, v4

    const/16 v4, 0xf2

    const-string v5, "0xF2"

    aput-object v5, v3, v4

    const/16 v4, 0xf3

    const-string v5, "0xF3"

    aput-object v5, v3, v4

    const/16 v4, 0xf4

    const-string v5, "0xF4"

    aput-object v5, v3, v4

    const/16 v4, 0xf5

    const-string v5, "0xF5"

    aput-object v5, v3, v4

    const/16 v4, 0xf6

    const-string v5, "0xF6"

    aput-object v5, v3, v4

    const/16 v4, 0xf7

    const-string v5, "0xF7"

    aput-object v5, v3, v4

    const/16 v4, 0xf8

    const-string v5, "0xF8"

    aput-object v5, v3, v4

    const/16 v4, 0xf9

    const-string v5, "0xF9"

    aput-object v5, v3, v4

    const/16 v4, 0xfa

    const-string v5, "0xFA"

    aput-object v5, v3, v4

    const/16 v4, 0xfb

    const-string v5, "0xFB"

    aput-object v5, v3, v4

    const/16 v4, 0xfc

    const-string v5, "0xFC"

    aput-object v5, v3, v4

    const/16 v4, 0xfd

    const-string v5, "0xFD"

    aput-object v5, v3, v4

    const/16 v4, 0xfe

    const-string v5, "0xFE"

    aput-object v5, v3, v4

    const/16 v4, 0xff

    const-string v5, "0xFF"

    aput-object v5, v3, v4

    .line 476
    .local v3, "toHexString":[Ljava/lang/String;
    if-nez p0, :cond_0

    .line 477
    const-string v0, "{NULL}"

    .local v0, "ret":Ljava/lang/String;
    move-object v1, v0

    .line 542
    .end local v0    # "ret":Ljava/lang/String;
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 482
    .end local v1    # "ret":Ljava/lang/String;
    :cond_0
    array-length v4, p0

    packed-switch v4, :pswitch_data_0

    .line 527
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 528
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/16 v4, 0x7b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 529
    array-length v4, p0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 530
    const/16 v4, 0x23

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 531
    aget-byte v4, p0, v7

    and-int/lit16 v4, v4, 0xff

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 532
    aget-byte v4, p0, v9

    and-int/lit16 v4, v4, 0xff

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 533
    aget-byte v4, p0, v10

    and-int/lit16 v4, v4, 0xff

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    const-string v4, "...}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 536
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .restart local v0    # "ret":Ljava/lang/String;
    :goto_1
    move-object v1, v0

    .line 542
    .end local v0    # "ret":Ljava/lang/String;
    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 485
    .end local v1    # "ret":Ljava/lang/String;
    :pswitch_0
    const-string v0, "{0#}"

    .line 486
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_1

    .line 489
    .end local v0    # "ret":Ljava/lang/String;
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 490
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    const-string v4, "{1#"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    aget-byte v4, p0, v7

    and-int/lit16 v4, v4, 0xff

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    const-string v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 493
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_1

    .line 497
    .end local v0    # "ret":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 498
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    const-string v4, "{2#"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    aget-byte v4, p0, v7

    and-int/lit16 v4, v4, 0xff

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 500
    aget-byte v4, p0, v9

    and-int/lit16 v4, v4, 0xff

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    const-string v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_1

    .line 506
    .end local v0    # "ret":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 507
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    const-string v4, "{3#"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 508
    aget-byte v4, p0, v7

    and-int/lit16 v4, v4, 0xff

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 509
    aget-byte v4, p0, v9

    and-int/lit16 v4, v4, 0xff

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 510
    aget-byte v4, p0, v10

    and-int/lit16 v4, v4, 0xff

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    const-string v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 512
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_1

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static IntegerArray2String([I)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x40

    const/4 v5, 0x0

    const/16 v4, 0x2c

    .line 549
    if-nez p0, :cond_0

    .line 550
    const-string v0, "{NULL}"

    .local v0, "ret":Ljava/lang/String;
    move-object v1, v0

    .line 614
    .end local v0    # "ret":Ljava/lang/String;
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 555
    .end local v1    # "ret":Ljava/lang/String;
    :cond_0
    array-length v3, p0

    packed-switch v3, :pswitch_data_0

    .line 599
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 600
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 601
    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 602
    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 603
    aget v3, p0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 604
    aget v3, p0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 605
    aget v3, p0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 607
    const-string v3, "...}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 608
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .restart local v0    # "ret":Ljava/lang/String;
    :goto_1
    move-object v1, v0

    .line 614
    .end local v0    # "ret":Ljava/lang/String;
    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 558
    .end local v1    # "ret":Ljava/lang/String;
    :pswitch_0
    const-string v0, "{0#}"

    .line 559
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_1

    .line 562
    .end local v0    # "ret":Ljava/lang/String;
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 563
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    const-string v3, "{1#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 564
    aget v3, p0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 565
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 566
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_1

    .line 570
    .end local v0    # "ret":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 571
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    const-string v3, "{2#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 572
    aget v3, p0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 573
    aget v3, p0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 574
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_1

    .line 578
    .end local v0    # "ret":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 579
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    const-string v3, "{3#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    aget v3, p0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 581
    aget v3, p0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 582
    aget v3, p0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 583
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 584
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 585
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_1

    .line 555
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static checkEnableClass(Ljava/lang/StackTraceElement;I)Z
    .locals 4
    .param p0, "ste"    # Ljava/lang/StackTraceElement;
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v2

    .line 118
    :cond_1
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->enableClassName:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 119
    .local v1, "enableLevel":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 120
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 12
    .param p0, "fmt"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 289
    sget-boolean v9, Lcom/felicanetworks/mfc/util/LogMgr;->bUseHomeBrewingFromat:Z

    if-nez v9, :cond_0

    .line 290
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 451
    :goto_0
    return-object v7

    .line 300
    :cond_0
    new-instance v8, Ljava/lang/StringBuffer;

    const/16 v9, 0x100

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 302
    .local v8, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 303
    .local v5, "len":I
    array-length v0, p1

    .line 304
    .local v0, "argc":I
    const/4 v4, 0x0

    .line 305
    .local v4, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v5, :cond_1

    .line 450
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 451
    .local v7, "ret":Ljava/lang/String;
    goto :goto_0

    .line 306
    .end local v7    # "ret":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 307
    .local v1, "c":C
    const/16 v9, 0x25

    if-ne v1, v9, :cond_16

    add-int/lit8 v9, v5, -0x1

    if-gt v3, v9, :cond_16

    .line 309
    add-int/lit8 v3, v3, 0x1

    .line 310
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 312
    sparse-switch v1, :sswitch_data_0

    .line 322
    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 305
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 326
    :sswitch_0
    if-ge v4, v0, :cond_2

    .line 327
    aget-object v6, p1, v4

    .line 332
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 334
    sparse-switch v1, :sswitch_data_1

    goto :goto_2

    .line 336
    :sswitch_1
    if-eqz v6, :cond_6

    .line 337
    instance-of v9, v6, Ljava/lang/Boolean;

    if-eqz v9, :cond_4

    .line 338
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "true"

    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 330
    :cond_2
    const/4 v6, 0x0

    .local v6, "obj":Ljava/lang/Object;
    goto :goto_3

    .line 338
    .end local v6    # "obj":Ljava/lang/Object;
    :cond_3
    const-string v9, "false"

    goto :goto_4

    .line 341
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "true"

    :goto_5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    const-string v9, "false"

    goto :goto_5

    .line 345
    :cond_6
    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 349
    :sswitch_2
    if-eqz v6, :cond_8

    .line 350
    instance-of v9, v6, Ljava/lang/Character;

    if-eqz v9, :cond_7

    .line 351
    check-cast v6, Ljava/lang/Character;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 354
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 358
    :cond_8
    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 362
    :sswitch_3
    if-eqz v6, :cond_a

    .line 363
    instance-of v9, v6, Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 364
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 367
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 371
    :cond_a
    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 375
    :sswitch_4
    if-eqz v6, :cond_e

    .line 376
    instance-of v9, v6, Ljava/lang/Integer;

    if-eqz v9, :cond_b

    .line 377
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 380
    :cond_b
    instance-of v9, v6, Ljava/lang/Long;

    if-eqz v9, :cond_c

    .line 381
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 384
    :cond_c
    instance-of v9, v6, Ljava/lang/Byte;

    if-eqz v9, :cond_d

    .line 385
    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 389
    :cond_d
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 390
    :catch_0
    move-exception v2

    .line 391
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "LogMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "args["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": fmt = \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\", obj = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 397
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_e
    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 401
    :sswitch_5
    if-eqz v6, :cond_12

    .line 402
    instance-of v9, v6, Ljava/lang/Integer;

    if-eqz v9, :cond_f

    .line 403
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 406
    :cond_f
    instance-of v9, v6, Ljava/lang/Long;

    if-eqz v9, :cond_10

    .line 407
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 410
    :cond_10
    instance-of v9, v6, Ljava/lang/Byte;

    if-eqz v9, :cond_11

    .line 411
    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 415
    :cond_11
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 416
    :catch_1
    move-exception v2

    .line 417
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "LogMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "args["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": fmt = \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\", obj = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 423
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_12
    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 427
    :sswitch_6
    if-eqz v6, :cond_15

    .line 428
    instance-of v9, v6, Ljava/lang/Double;

    if-eqz v9, :cond_13

    .line 429
    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 432
    :cond_13
    instance-of v9, v6, Ljava/lang/Float;

    if-eqz v9, :cond_14

    .line 433
    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 436
    :cond_14
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 440
    :cond_15
    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 446
    :cond_16
    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 312
    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_0
        0x63 -> :sswitch_0
        0x64 -> :sswitch_0
        0x66 -> :sswitch_0
        0x73 -> :sswitch_0
        0x78 -> :sswitch_0
    .end sparse-switch

    .line 334
    :sswitch_data_1
    .sparse-switch
        0x62 -> :sswitch_1
        0x63 -> :sswitch_2
        0x64 -> :sswitch_4
        0x66 -> :sswitch_6
        0x73 -> :sswitch_3
        0x78 -> :sswitch_5
    .end sparse-switch
.end method

.method protected static getLevel(I)Ljava/lang/String;
    .locals 4
    .param p0, "level"    # I

    .prologue
    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "[ERR]"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "[WAR]"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "[API]"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "[PKG]"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "[CLS]"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "[DBG]"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "[TRC]"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    .local v1, "str":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 94
    const-string v1, "[UNK]"

    .line 97
    :cond_0
    return-object v1
.end method

.method public static getUseHomeBrewingFromat()Z
    .locals 1

    .prologue
    .line 110
    sget-boolean v0, Lcom/felicanetworks/mfc/util/LogMgr;->bUseHomeBrewingFromat:Z

    return v0
.end method

.method public static varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "level"    # I
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 179
    return-void
.end method

.method public static logArray(I[B)V
    .locals 4
    .param p0, "level"    # I
    .param p1, "ary"    # [B

    .prologue
    const/4 v3, 0x1

    .line 654
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 657
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    if-nez v0, :cond_1

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    array-length v1, v0

    if-le v1, v3, :cond_0

    .line 666
    const/4 v1, 0x0

    const/4 v2, -0x1

    aget-object v3, v0, v3

    invoke-static {p0, p1, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->logArray(I[BIILjava/lang/StackTraceElement;)V

    goto :goto_0
.end method

.method public static logArray(I[BII)V
    .locals 3
    .param p0, "level"    # I
    .param p1, "ary"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v2, 0x1

    .line 680
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 683
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    if-nez v0, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 692
    aget-object v1, v0, v2

    invoke-static {p0, p1, p2, p3, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->logArray(I[BIILjava/lang/StackTraceElement;)V

    goto :goto_0
.end method

.method private static logArray(I[BIILjava/lang/StackTraceElement;)V
    .locals 1
    .param p0, "level"    # I
    .param p1, "ary"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "ste"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 705
    const/16 v0, 0x20

    .line 758
    .local v0, "spc":C
    return-void
.end method

.method protected static varargs output(ILjava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8
    .param p0, "level"    # I
    .param p1, "ste"    # Ljava/lang/StackTraceElement;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 201
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v5, 0x80

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 202
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/felicanetworks/mfc/util/LogMgr;->getLevel(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    const/16 v5, 0x5b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 204
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const-string v5, "]["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    const-string v5, "(L:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 209
    const-string v5, ")]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, "tag":Ljava/lang/String;
    const/4 v0, 0x0

    .line 215
    .local v0, "bChangeArray":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p3

    if-lt v1, v5, :cond_0

    .line 226
    :goto_1
    if-nez v0, :cond_4

    .line 228
    const-string v5, "%s"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 229
    array-length v5, p3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 230
    aget-object v5, p3, v7

    if-eqz v5, :cond_3

    .line 231
    aget-object v5, p3, v7

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 232
    packed-switch p0, :pswitch_data_0

    .line 240
    aget-object v5, p3, v7

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_2
    return-void

    .line 216
    :cond_0
    aget-object v5, p3, v1

    instance-of v5, v5, [B

    if-eqz v5, :cond_1

    .line 217
    const/4 v0, 0x1

    .line 218
    goto :goto_1

    .line 221
    :cond_1
    aget-object v5, p3, v1

    instance-of v5, v5, [I

    if-eqz v5, :cond_2

    .line 222
    const/4 v0, 0x1

    .line 223
    goto :goto_1

    .line 215
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :pswitch_0
    aget-object v5, p3, v7

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 237
    :pswitch_1
    aget-object v5, p3, v7

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 244
    :cond_3
    packed-switch p0, :pswitch_data_1

    .line 252
    invoke-static {p2, p3}, Lcom/felicanetworks/mfc/util/LogMgr;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 246
    :pswitch_2
    invoke-static {p2, p3}, Lcom/felicanetworks/mfc/util/LogMgr;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 249
    :pswitch_3
    invoke-static {p2, p3}, Lcom/felicanetworks/mfc/util/LogMgr;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 259
    :cond_4
    array-length v5, p3

    new-array v2, v5, [Ljava/lang/Object;

    .line 260
    .local v2, "new_args":[Ljava/lang/Object;
    const/4 v1, 0x0

    :goto_3
    array-length v5, p3

    if-lt v1, v5, :cond_5

    .line 273
    packed-switch p0, :pswitch_data_2

    .line 281
    invoke-static {p2, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 261
    :cond_5
    aget-object v5, p3, v1

    instance-of v5, v5, [B

    if-eqz v5, :cond_6

    .line 262
    aget-object v5, p3, v1

    check-cast v5, [B

    invoke-static {v5}, Lcom/felicanetworks/mfc/util/LogMgr;->ByteArray2String([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 260
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 265
    :cond_6
    aget-object v5, p3, v1

    instance-of v5, v5, [I

    if-eqz v5, :cond_7

    .line 266
    aget-object v5, p3, v1

    check-cast v5, [I

    invoke-static {v5}, Lcom/felicanetworks/mfc/util/LogMgr;->IntegerArray2String([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    goto :goto_4

    .line 269
    :cond_7
    aget-object v5, p3, v1

    aput-object v5, v2, v1

    goto :goto_4

    .line 275
    :pswitch_4
    invoke-static {p2, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 278
    :pswitch_5
    invoke-static {p2, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 244
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 273
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static setUseHomeBrewingFromat(Z)Z
    .locals 1
    .param p0, "bUse"    # Z

    .prologue
    .line 103
    sget-boolean v0, Lcom/felicanetworks/mfc/util/LogMgr;->bUseHomeBrewingFromat:Z

    .line 104
    .local v0, "ret":Z
    sput-boolean p0, Lcom/felicanetworks/mfc/util/LogMgr;->bUseHomeBrewingFromat:Z

    .line 106
    return v0
.end method

.method static toHexString(II)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # I
    .param p1, "width"    # I

    .prologue
    const/16 v8, 0x30

    .line 625
    const/16 v5, 0x30

    .line 626
    .local v5, "zero":C
    const/4 v6, 0x7

    new-array v3, v6, [C

    fill-array-data v3, :array_0

    .line 627
    .local v3, "pads":[C
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 628
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v2, p1, v6

    .line 629
    .local v2, "padLen":I
    if-lez v2, :cond_0

    .line 630
    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    .line 631
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 642
    :cond_0
    :goto_0
    return-object v4

    .line 632
    :cond_1
    array-length v6, v3

    if-gt v2, v6, :cond_2

    .line 633
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-static {v3, v7, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 635
    :cond_2
    const-string v1, ""

    .line 636
    .local v1, "pad":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_3

    .line 639
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 637
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 636
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 626
    :array_0
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method

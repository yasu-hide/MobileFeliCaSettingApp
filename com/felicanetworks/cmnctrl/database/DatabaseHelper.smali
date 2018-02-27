.class public Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# static fields
.field private static final CREATE_ERRORLOG_TABLE:Ljava/lang/String; = "CREATE TABLE ErrorLog(Date TEXT NOT NULL, LogMessage TEXT NOT NULL, Idm TEXT NOT NULL)"

.field private static final DATABASE_NAME:Ljava/lang/String; = "log.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static dbHelper:Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;->dbHelper:Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;

    return-void
.end method

.method private constructor <init>(Lcom/felicanetworks/cmnlib/AppContext;)V
    .locals 4
    .param p1, "context"    # Lcom/felicanetworks/cmnlib/AppContext;

    .prologue
    .line 74
    iget-object v0, p1, Lcom/felicanetworks/cmnlib/AppContext;->androidContext:Landroid/content/Context;

    const-string v1, "log.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 75
    return-void
.end method

.method public static clearInstance()V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;->dbHelper:Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;

    if-eqz v0, :cond_0

    .line 92
    :try_start_0
    sget-object v0, Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;->dbHelper:Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;->dbHelper:Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;

    .line 103
    :cond_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Lcom/felicanetworks/cmnlib/AppContext;)Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;
    .locals 3
    .param p0, "context"    # Lcom/felicanetworks/cmnlib/AppContext;

    .prologue
    .line 46
    const-class v2, Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;->dbHelper:Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;

    invoke-direct {v1, p0}, Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;-><init>(Lcom/felicanetworks/cmnlib/AppContext;)V

    sput-object v1, Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;->dbHelper:Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;

    .line 55
    sget-object v1, Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;->dbHelper:Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;

    invoke-virtual {v1}, Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 56
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 61
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    sget-object v1, Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;->dbHelper:Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 46
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x2

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x5

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 118
    const-string v0, "CREATE TABLE ErrorLog(Date TEXT NOT NULL, LogMessage TEXT NOT NULL, Idm TEXT NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 134
    return-void
.end method

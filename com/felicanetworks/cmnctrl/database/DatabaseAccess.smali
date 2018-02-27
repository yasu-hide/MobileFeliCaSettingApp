.class public Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;
.super Ljava/lang/Object;
.source "DatabaseAccess.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/cmnctrl/database/DatabaseAccess$ErrorLogColumns;
    }
.end annotation


# static fields
.field private static final COLUMNS_ERRORLOG:[Ljava/lang/String;

.field private static final DATABASE_NAME:Ljava/lang/String; = "log.db"

.field private static final INSERT_ERRORLOG_TABLE:Ljava/lang/String; = "INSERT INTO ErrorLog (Date, LogMessage, Idm) VALUES (?, ?, ?)"

.field private static final ORDER_BY:Ljava/lang/String; = "Date ASC"

.field private static final TABLE_ERRORLOG:Ljava/lang/String; = "ErrorLog"


# instance fields
.field private context:Lcom/felicanetworks/cmnlib/AppContext;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Date"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "LogMessage"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Idm"

    aput-object v2, v0, v1

    sput-object v0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->COLUMNS_ERRORLOG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/felicanetworks/cmnlib/AppContext;)V
    .locals 4
    .param p1, "context"    # Lcom/felicanetworks/cmnlib/AppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnctrl/database/DatabaseAccessException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 82
    iput-object p1, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    .line 85
    :try_start_0
    invoke-static {p1}, Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;->getInstance(Lcom/felicanetworks/cmnlib/AppContext;)Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->dbHelper:Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;

    .line 86
    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->dbHelper:Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;

    invoke-virtual {v2}, Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v1, Lcom/felicanetworks/cmnctrl/database/DatabaseAccessException;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/felicanetworks/cmnctrl/database/DatabaseAccessException;-><init>(Ljava/lang/Throwable;I)V

    .line 92
    .local v1, "exp":Lcom/felicanetworks/cmnctrl/database/DatabaseAccessException;
    iget-object v2, p1, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    .line 93
    throw v1
.end method

.method public static clearInstance()V
    .locals 0

    .prologue
    .line 307
    invoke-static {}, Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;->clearInstance()V

    .line 311
    return-void
.end method


# virtual methods
.method public declared-synchronized addErrorLog(Ljava/lang/String;)V
    .locals 19
    .param p1, "errorLog"    # Ljava/lang/String;

    .prologue
    .line 112
    monitor-enter p0

    const/4 v12, 0x0

    .line 113
    .local v12, "cursor":Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 116
    .local v17, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    invoke-static {v2}, Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;->getInstance(Lcom/felicanetworks/cmnlib/AppContext;)Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->dbHelper:Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->dbHelper:Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;

    invoke-virtual {v2}, Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 126
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v2, v2, Lcom/felicanetworks/cmnlib/AppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    invoke-virtual {v2}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getErrorLogLimit()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 129
    .local v16, "max":I
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "COUNT(Date)"

    aput-object v3, v4, v2

    .line 131
    .local v4, "columns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ErrorLog"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 132
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 133
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v11

    .line 135
    .local v11, "count":I
    :goto_0
    move/from16 v0, v16

    if-gt v0, v11, :cond_4

    .line 165
    if-eqz v12, :cond_1

    .line 169
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_1
    if-eqz v17, :cond_2

    .line 175
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v11    # "count":I
    .end local v16    # "max":I
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 133
    .restart local v4    # "columns":[Ljava/lang/String;
    .restart local v16    # "max":I
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 143
    .restart local v11    # "count":I
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "INSERT INTO ErrorLog (Date, LogMessage, Idm) VALUES (?, ?, ?)"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v17

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v2, v2, Lcom/felicanetworks/cmnlib/AppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const v3, 0x1000018

    invoke-virtual {v2, v3}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 147
    .local v18, "timeZone":Ljava/lang/String;
    new-instance v13, Lcom/felicanetworks/cmnlib/util/DateFormatter;

    const-string v2, "yyyyMMddHHmmssSSS"

    move-object/from16 v0, v18

    invoke-direct {v13, v2, v0}, Lcom/felicanetworks/cmnlib/util/DateFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v13, "df":Lcom/felicanetworks/cmnlib/util/DateFormatter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v2, v2, Lcom/felicanetworks/cmnlib/AppContext;->idm:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v15, v2, Lcom/felicanetworks/cmnlib/AppContext;->idm:Ljava/lang/String;

    .line 151
    .local v15, "idm":Ljava/lang/String;
    :goto_2
    const/4 v2, 0x1

    invoke-virtual {v13}, Lcom/felicanetworks/cmnlib/util/DateFormatter;->getSystemTime()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 152
    const/4 v2, 0x2

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 153
    const/4 v2, 0x3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v15}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 154
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 165
    if-eqz v12, :cond_5

    .line 169
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_5
    if-eqz v17, :cond_2

    .line 175
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 112
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v11    # "count":I
    .end local v13    # "df":Lcom/felicanetworks/cmnlib/util/DateFormatter;
    .end local v15    # "idm":Ljava/lang/String;
    .end local v16    # "max":I
    .end local v18    # "timeZone":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 149
    .restart local v4    # "columns":[Ljava/lang/String;
    .restart local v11    # "count":I
    .restart local v13    # "df":Lcom/felicanetworks/cmnlib/util/DateFormatter;
    .restart local v16    # "max":I
    .restart local v18    # "timeZone":Ljava/lang/String;
    :cond_6
    :try_start_4
    const-string v15, ""
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 155
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v11    # "count":I
    .end local v13    # "df":Lcom/felicanetworks/cmnlib/util/DateFormatter;
    .end local v16    # "max":I
    .end local v18    # "timeZone":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 159
    .local v14, "e":Ljava/lang/Exception;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v2, v2, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v0, v14}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    .line 160
    instance-of v2, v14, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    if-eqz v2, :cond_7

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->deleteLogDb()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 165
    :cond_7
    if-eqz v12, :cond_8

    .line 169
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_8
    if-eqz v17, :cond_2

    .line 175
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_1

    .line 165
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v12, :cond_9

    .line 169
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_9
    if-eqz v17, :cond_a

    .line 175
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public cleanErrorInfo()V
    .locals 5

    .prologue
    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ErrorLog"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v1, v1, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v2, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v1, v2, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    .line 265
    instance-of v1, v0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->deleteLogDb()V

    goto :goto_0
.end method

.method public deleteLogDb()V
    .locals 3

    .prologue
    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v1, v1, Lcom/felicanetworks/cmnlib/AppContext;->androidContext:Landroid/content/Context;

    const-string v2, "log.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 294
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 298
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v1, v1, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v2, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v1, v2, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto :goto_0
.end method

.method public getClassCode()I
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public getErrorLogData()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/felicanetworks/cmnctrl/data/ErrorLogData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v14, "retList":Ljava/util/List;, "Ljava/util/List<Lcom/felicanetworks/cmnctrl/data/ErrorLogData;>;"
    const/4 v10, 0x0

    .line 200
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    invoke-static {v0}, Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;->getInstance(Lcom/felicanetworks/cmnlib/AppContext;)Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->dbHelper:Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;

    .line 206
    iget-object v0, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->dbHelper:Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/felicanetworks/cmnctrl/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v0, v0, Lcom/felicanetworks/cmnlib/AppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    invoke-virtual {v0}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getErrorLogLimit()Ljava/lang/String;

    move-result-object v8

    .line 212
    .local v8, "max":Ljava/lang/String;
    iget-object v0, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ErrorLog"

    sget-object v2, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->COLUMNS_ERRORLOG:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "Date ASC"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 213
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 214
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 215
    .local v9, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v9, :cond_1

    .line 219
    new-instance v12, Lcom/felicanetworks/cmnctrl/data/ErrorLogData;

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v0, v1, v2}, Lcom/felicanetworks/cmnctrl/data/ErrorLogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .local v12, "errLog":Lcom/felicanetworks/cmnctrl/data/ErrorLogData;
    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 234
    .end local v12    # "errLog":Lcom/felicanetworks/cmnctrl/data/ErrorLogData;
    :cond_1
    if-eqz v10, :cond_2

    .line 238
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 244
    .end local v8    # "max":Ljava/lang/String;
    .end local v9    # "count":I
    .end local v13    # "i":I
    :cond_2
    :goto_1
    return-object v14

    .line 223
    :catch_0
    move-exception v11

    .line 227
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v0, p0, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v0, v0, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v1, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v0, v1, p0, v11}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    .line 228
    instance-of v0, v11, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    if-eqz v0, :cond_3

    .line 230
    invoke-virtual {p0}, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->deleteLogDb()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :cond_3
    if-eqz v10, :cond_2

    .line 238
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 234
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_4

    .line 238
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x5

    return v0
.end method

.class public final Lcom/felicanetworks/cmnlib/util/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# static fields
.field private static final HEX_CHARS:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 354
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 355
    .local v2, "buf":Ljava/lang/StringBuffer;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    .line 359
    .local v1, "b":B
    invoke-static {v1}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 364
    .end local v1    # "b":B
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static changeEndian([B)[B
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 430
    array-length v2, p0

    new-array v0, v2, [B

    .line 431
    .local v0, "buf":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 432
    array-length v2, p0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v3, p0, v1

    aput-byte v3, v0, v2

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    :cond_0
    return-object v0
.end method

.method public static getAppInfo(Lcom/felicanetworks/cmnlib/AppContext;I)[Ljava/lang/String;
    .locals 30
    .param p0, "context"    # Lcom/felicanetworks/cmnlib/AppContext;
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 168
    const/16 v25, 0x0

    .line 169
    .local v25, "uid":I
    const/4 v7, 0x0

    .line 171
    .local v7, "flg":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/cmnlib/AppContext;->androidContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 173
    .local v21, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/cmnlib/AppContext;->androidContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "activity"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 175
    .local v4, "am":Landroid/app/ActivityManager;
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v23

    .line 178
    .local v23, "rapiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 179
    .local v22, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 184
    move-object/from16 v0, v22

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v25, v0

    .line 186
    const/4 v7, 0x1

    .line 192
    .end local v22    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    if-nez v7, :cond_2

    .line 196
    const/16 v24, 0x0

    .line 280
    .end local v8    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v24

    .line 200
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v26

    .line 201
    .local v26, "uidPkgList":[Ljava/lang/String;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v20, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/cmnlib/AppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getMfcPackageName()Ljava/lang/String;

    move-result-object v16

    .line 205
    .local v16, "mfcPkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/cmnlib/AppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getMfcDataReceivingMessage()Ljava/lang/String;

    move-result-object v14

    .line 207
    .local v14, "mfcDrm":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/cmnlib/AppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getMfcPermission()Ljava/lang/String;

    move-result-object v15

    .line 209
    .local v15, "mfcPerm":Ljava/lang/String;
    if-eqz v26, :cond_6

    .line 214
    move-object/from16 v5, v26

    .local v5, "arr$":[Ljava/lang/String;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    move v9, v8

    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v12    # "len$":I
    .local v9, "i$":I
    :goto_1
    if-ge v9, v12, :cond_6

    aget-object v19, v5, v9

    .line 216
    .local v19, "pkg":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 220
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v28, 0x0

    aput-object v14, v24, v28

    .line 221
    .local v24, "ret":[Ljava/lang/String;
    goto :goto_0

    .line 225
    .end local v24    # "ret":[Ljava/lang/String;
    :cond_3
    const/16 v28, 0x1000

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    .line 227
    .local v18, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v18, :cond_4

    .line 231
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v27, v0

    .line 233
    .local v27, "usedPerms":[Ljava/lang/String;
    if-eqz v27, :cond_4

    .line 238
    move-object/from16 v6, v27

    .local v6, "arr$":[Ljava/lang/String;
    array-length v13, v6

    .local v13, "len$":I
    const/4 v8, 0x0

    .end local v9    # "i$":I
    .restart local v8    # "i$":I
    :goto_2
    if-ge v8, v13, :cond_4

    aget-object v17, v6, v8

    .line 239
    .local v17, "perm":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 244
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 248
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v13    # "len$":I
    .end local v17    # "perm":Ljava/lang/String;
    .end local v27    # "usedPerms":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v9, 0x1

    .restart local v8    # "i$":I
    move v9, v8

    .end local v8    # "i$":I
    .restart local v9    # "i$":I
    goto :goto_1

    .line 238
    .end local v9    # "i$":I
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v8    # "i$":I
    .restart local v13    # "len$":I
    .restart local v17    # "perm":Ljava/lang/String;
    .restart local v27    # "usedPerms":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 262
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v13    # "len$":I
    .end local v17    # "perm":Ljava/lang/String;
    .end local v18    # "pi":Landroid/content/pm/PackageInfo;
    .end local v19    # "pkg":Ljava/lang/String;
    .end local v27    # "usedPerms":[Ljava/lang/String;
    :cond_6
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v11, "labelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 264
    .restart local v19    # "pkg":Ljava/lang/String;
    const/16 v28, 0x2000

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 265
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 269
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v19    # "pkg":Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    .line 270
    .local v10, "labelArray":[Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_8

    .line 274
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v10, v0, [Ljava/lang/String;

    .line 275
    invoke-interface {v11, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_8
    move-object/from16 v24, v10

    .line 280
    goto/16 :goto_0
.end method

.method public static getClassShortName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 446
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 447
    .local v0, "ix":I
    if-gez v0, :cond_0

    .end local p0    # "className":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "className":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getSystemTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public static hexStringListToIntList([Ljava/lang/String;)[I
    .locals 4
    .param p0, "values"    # [Ljava/lang/String;

    .prologue
    .line 407
    array-length v3, p0

    new-array v1, v3, [I

    .line 408
    .local v1, "ints":[I
    const/4 v2, 0x0

    .local v2, "ix":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 412
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->hexStringToBin(Ljava/lang/String;)[B

    move-result-object v0

    .line 413
    .local v0, "b":[B
    invoke-static {v0}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->toInt([B)I

    move-result v3

    aput v3, v1, v2

    .line 408
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 418
    .end local v0    # "b":[B
    :cond_0
    return-object v1
.end method

.method public static hexStringToBin(Ljava/lang/String;)[B
    .locals 10
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 95
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 99
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 101
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v6, v7, 0x2

    .line 102
    .local v6, "size":I
    new-array v0, v6, [B

    .line 103
    .local v0, "bytes":[B
    const/4 v3, 0x0

    .local v3, "ix":I
    :goto_0
    if-ge v3, v6, :cond_4

    .line 107
    mul-int/lit8 v7, v3, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 108
    .local v1, "h":C
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 109
    .local v4, "l":C
    const-string v7, "0123456789ABCDEF"

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 110
    .local v2, "hi":I
    const-string v7, "0123456789ABCDEF"

    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 111
    .local v5, "li":I
    if-ltz v2, :cond_2

    if-gez v5, :cond_3

    .line 115
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid hex char."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 117
    :cond_3
    shl-int/lit8 v7, v2, 0x4

    or-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "h":C
    .end local v2    # "hi":I
    .end local v4    # "l":C
    .end local v5    # "li":I
    :cond_4
    return-object v0
.end method

.method public static intToDecString(II)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I
    .param p1, "digits"    # I

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, "str":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static intToHexString(II)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # I
    .param p1, "digits"    # I

    .prologue
    .line 292
    const/16 v1, 0x8

    .line 293
    .local v1, "sizeofInt":I
    const/4 v0, 0x4

    .line 296
    .local v0, "digitPerBit":I
    const/16 v2, 0x8

    if-le v2, p1, :cond_0

    .line 297
    rsub-int/lit8 v2, p1, 0x8

    mul-int/lit8 v2, v2, 0x4

    shl-int/2addr p0, v2

    .line 298
    rsub-int/lit8 v2, p1, 0x8

    mul-int/lit8 v2, v2, 0x4

    ushr-int/2addr p0, v2

    .line 302
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static paddingZero(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "targetLength"    # I

    .prologue
    .line 58
    move-object v3, p0

    .line 60
    .local v3, "paddingStr":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, p1, :cond_1

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v2, p1, v4

    .line 66
    .local v2, "lackCnt":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 67
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 71
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "i":I
    .end local v2    # "lackCnt":I
    :cond_1
    return-object v3
.end method

.method public static toHexString(B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # B

    .prologue
    .line 331
    shr-int/lit8 v3, p0, 0x4

    and-int/lit8 v1, v3, 0xf

    .line 332
    .local v1, "h":I
    and-int/lit8 v2, p0, 0xf

    .line 333
    .local v2, "l":I
    const/4 v3, 0x2

    new-array v0, v3, [C

    .line 334
    .local v0, "buf":[C
    const/4 v3, 0x0

    const-string v4, "0123456789ABCDEF"

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v3

    .line 335
    const/4 v3, 0x1

    const-string v4, "0123456789ABCDEF"

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v3

    .line 339
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static toInt([B)I
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 381
    const/4 v2, 0x0

    .line 382
    .local v2, "val":I
    const/4 v0, 0x0

    .line 383
    .local v0, "bit":I
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 384
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v0

    add-int/2addr v2, v3

    .line 385
    add-int/lit8 v0, v0, 0x8

    .line 383
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 390
    :cond_0
    return v2
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 490
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 491
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "ix":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 492
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ix":I
    .local v6, "ix":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 493
    .local v2, "ch":C
    const/16 v8, 0x5c

    if-ne v2, v8, :cond_3

    .line 494
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ix":I
    .restart local v5    # "ix":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 495
    .local v3, "e":C
    const/16 v8, 0x75

    if-ne v3, v8, :cond_1

    .line 496
    const/4 v7, 0x0

    .line 497
    .local v7, "value":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v6, v5

    .end local v5    # "ix":I
    .restart local v6    # "ix":I
    :goto_1
    const/4 v8, 0x4

    if-ge v4, v8, :cond_0

    .line 498
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ix":I
    .restart local v5    # "ix":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 499
    .local v0, "aChar":C
    sparse-switch v0, :sswitch_data_0

    .line 513
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Malformed \\uxxxx encoding."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 502
    :sswitch_0
    shl-int/lit8 v8, v7, 0x4

    add-int/2addr v8, v0

    add-int/lit8 v7, v8, -0x30

    .line 497
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5    # "ix":I
    .restart local v6    # "ix":I
    goto :goto_1

    .line 506
    .end local v6    # "ix":I
    .restart local v5    # "ix":I
    :sswitch_1
    shl-int/lit8 v8, v7, 0x4

    add-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v0

    add-int/lit8 v7, v8, -0x61

    .line 507
    goto :goto_2

    .line 510
    :sswitch_2
    shl-int/lit8 v8, v7, 0x4

    add-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v0

    add-int/lit8 v7, v8, -0x41

    .line 511
    goto :goto_2

    .line 516
    .end local v0    # "aChar":C
    .end local v5    # "ix":I
    .restart local v6    # "ix":I
    :cond_0
    int-to-char v2, v7

    move v5, v6

    .line 529
    .end local v3    # "e":C
    .end local v4    # "i":I
    .end local v6    # "ix":I
    .end local v7    # "value":I
    .restart local v5    # "ix":I
    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 518
    .restart local v3    # "e":C
    :cond_1
    sparse-switch v3, :sswitch_data_1

    .line 524
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 525
    move v2, v3

    goto :goto_3

    .line 519
    :sswitch_3
    const/16 v2, 0x9

    goto :goto_3

    .line 520
    :sswitch_4
    const/16 v2, 0xd

    goto :goto_3

    .line 521
    :sswitch_5
    const/16 v2, 0xa

    goto :goto_3

    .line 522
    :sswitch_6
    const/16 v2, 0x5c

    goto :goto_3

    .line 531
    .end local v2    # "ch":C
    .end local v3    # "e":C
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .end local v5    # "ix":I
    .restart local v2    # "ch":C
    .restart local v6    # "ix":I
    :cond_3
    move v5, v6

    .end local v6    # "ix":I
    .restart local v5    # "ix":I
    goto :goto_3

    .line 499
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x44 -> :sswitch_2
        0x45 -> :sswitch_2
        0x46 -> :sswitch_2
        0x61 -> :sswitch_1
        0x62 -> :sswitch_1
        0x63 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
    .end sparse-switch

    .line 518
    :sswitch_data_1
    .sparse-switch
        0x5c -> :sswitch_6
        0x6e -> :sswitch_5
        0x72 -> :sswitch_4
        0x74 -> :sswitch_3
    .end sparse-switch
.end method

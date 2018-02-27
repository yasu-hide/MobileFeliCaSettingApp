.class public interface abstract Lcom/felicanetworks/gpaslib/GpasApduManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation
.end method

.method public abstract open([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation
.end method

.method public abstract process(Lcom/felicanetworks/gpaslib/GpasApduCommand;)Lcom/felicanetworks/gpaslib/GpasApduResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/gpaslib/GpasException;
        }
    .end annotation
.end method

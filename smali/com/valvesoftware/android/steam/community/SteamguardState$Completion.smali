.class public abstract Lcom/valvesoftware/android/steam/community/SteamguardState$Completion;
.super Ljava/lang/Object;
.source "SteamguardState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/SteamguardState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Completion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract failure(ILjava/lang/String;)V
.end method

.method public abstract success()V
.end method

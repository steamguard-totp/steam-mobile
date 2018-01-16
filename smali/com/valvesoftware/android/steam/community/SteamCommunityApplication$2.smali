.class final Lcom/valvesoftware/android/steam/community/SteamCommunityApplication$2;
.super Ljava/lang/Object;
.source "SteamCommunityApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->switchingToBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    sput-boolean v0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->isInForeground:Z

    .line 191
    return-void
.end method

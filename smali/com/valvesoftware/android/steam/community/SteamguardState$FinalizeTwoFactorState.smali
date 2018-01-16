.class Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;
.super Ljava/lang/Object;
.source "SteamguardState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/SteamguardState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FinalizeTwoFactorState"
.end annotation


# instance fields
.field public activationCode:Ljava/lang/String;

.field public bSentActivationCode:Z

.field public nSentAuthCodeCount:I

.field public oldScheme:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

.field public retriesRemaining:I

.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

.field public timeOffset:J


# direct methods
.method public constructor <init>(Lcom/valvesoftware/android/steam/community/SteamguardState;Ljava/lang/String;)V
    .locals 3
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/SteamguardState;
    .param p2, "activationCode"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 562
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->this$0:Lcom/valvesoftware/android/steam/community/SteamguardState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->activationCode:Ljava/lang/String;

    .line 565
    const-wide/16 v0, -0x28

    iput-wide v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->timeOffset:J

    .line 566
    const/16 v0, 0xa

    iput v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->retriesRemaining:I

    .line 567
    iput-boolean v2, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->bSentActivationCode:Z

    .line 568
    iput v2, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->nSentAuthCodeCount:I

    .line 569
    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getScheme()Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    move-result-object v0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamguardState$FinalizeTwoFactorState;->oldScheme:Lcom/valvesoftware/android/steam/community/SteamguardState$Scheme;

    .line 570
    return-void
.end method

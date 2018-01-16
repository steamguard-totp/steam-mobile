.class public final enum Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;
.super Ljava/lang/Enum;
.source "LoggedInUserAccountInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoginState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

.field public static final enum LoggedIn:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

.field public static final enum RequireSteamGuardEmailToken:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

.field public static final enum RequireUsernameAndPassword:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    const-string v1, "RequireUsernameAndPassword"

    invoke-direct {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;->RequireUsernameAndPassword:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    new-instance v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    const-string v1, "RequireSteamGuardEmailToken"

    invoke-direct {v0, v1, v3}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;->RequireSteamGuardEmailToken:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    new-instance v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    const-string v1, "LoggedIn"

    invoke-direct {v0, v1, v4}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;->LoggedIn:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    sget-object v1, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;->RequireUsernameAndPassword:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;->RequireSteamGuardEmailToken:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;->LoggedIn:Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;->$VALUES:[Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    const-class v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    return-object v0
.end method

.method public static values()[Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;->$VALUES:[Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    invoke-virtual {v0}, [Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$LoginState;

    return-object v0
.end method

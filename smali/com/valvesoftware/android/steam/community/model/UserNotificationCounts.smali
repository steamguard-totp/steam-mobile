.class public Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;
.super Ljava/lang/Object;
.source "UserNotificationCounts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;
    }
.end annotation


# static fields
.field public static final MAX_NOTIFICATION_TYPES:I


# instance fields
.field private final m_rgNotificationCounts:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationMax:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    iget v0, v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->value:I

    sput v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->MAX_NOTIFICATION_TYPES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->MAX_NOTIFICATION_TYPES:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->m_rgNotificationCounts:[I

    .line 38
    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->MAX_NOTIFICATION_TYPES:I

    if-ge v0, v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->m_rgNotificationCounts:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public GetNotificationCount(Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;)I
    .locals 3
    .param p1, "eUserNotification"    # Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    .prologue
    .line 59
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationFriendInvite:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    if-ne p1, v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->m_rgNotificationCounts:[I

    sget-object v1, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationFriendInvite:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    iget v1, v1, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->value:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->m_rgNotificationCounts:[I

    sget-object v2, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationGroupInvite:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    iget v2, v2, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->value:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 62
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->m_rgNotificationCounts:[I

    iget v1, p1, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->value:I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public GetTotalNotificationCount()I
    .locals 7

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "cTotalNotifications":I
    invoke-static {}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->values()[Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 44
    .local v1, "eUserNotification":Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;
    iget-boolean v5, v1, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->supported:Z

    if-eqz v5, :cond_0

    .line 45
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->m_rgNotificationCounts:[I

    iget v6, v1, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->value:I

    aget v5, v5, v6

    add-int/2addr v0, v5

    .line 43
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    .end local v1    # "eUserNotification":Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;
    :cond_1
    return v0
.end method

.method public SetNotificationCount(II)V
    .locals 1
    .param p1, "eUserNotification"    # I
    .param p2, "value"    # I

    .prologue
    .line 52
    if-lez p1, :cond_0

    sget v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->MAX_NOTIFICATION_TYPES:I

    if-ge p1, v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->m_rgNotificationCounts:[I

    aput p2, v0, p1

    .line 54
    :cond_0
    return-void
.end method

.method public UpdateNotificationCounts(Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;)V
    .locals 3
    .param p1, "other"    # Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;

    .prologue
    .line 73
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->MAX_NOTIFICATION_TYPES:I

    if-ge v0, v1, :cond_1

    .line 75
    iget-object v1, p1, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->m_rgNotificationCounts:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->m_rgNotificationCounts:[I

    iget-object v2, p1, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->m_rgNotificationCounts:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 73
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->m_rgNotificationCounts:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    goto :goto_1

    .line 80
    :cond_1
    return-void
.end method

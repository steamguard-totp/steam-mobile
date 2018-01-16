.class Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;
.super Ljava/lang/Object;
.source "LoggedInUserAccountInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CWebCookie"
.end annotation


# instance fields
.field public m_httponly:Z

.field public m_secure:Z

.field public m_value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "secure"    # Z
    .param p3, "httponly"    # Z

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;->m_secure:Z

    .line 40
    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;->m_httponly:Z

    .line 34
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;->m_value:Ljava/lang/String;

    .line 35
    iput-boolean p2, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;->m_secure:Z

    .line 36
    iput-boolean p3, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;->m_httponly:Z

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;)Z
    .locals 3
    .param p1, "other"    # Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;

    .prologue
    const/4 v0, 0x0

    .line 44
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;->m_value:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 46
    iget-object v1, p1, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;->m_value:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;->m_value:Ljava/lang/String;

    iget-object v2, p1, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;->m_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    :cond_2
    iget-boolean v1, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;->m_secure:Z

    iget-boolean v2, p1, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;->m_secure:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;->m_httponly:Z

    iget-boolean v2, p1, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$CWebCookie;->m_httponly:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

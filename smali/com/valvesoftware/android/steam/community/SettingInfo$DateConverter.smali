.class public Lcom/valvesoftware/android/steam/community/SettingInfo$DateConverter;
.super Ljava/lang/Object;
.source "SettingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/SettingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateConverter"
.end annotation


# direct methods
.method public static formatDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/SettingInfo$DateConverter;->makeCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 195
    .local v0, "myDOB":Ljava/util/Calendar;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static makeCalendar(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 184
    .local v1, "myDOB":Ljava/util/Calendar;
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 187
    .local v0, "intValue":I
    div-int/lit16 v2, v0, 0x2710

    div-int/lit16 v3, v0, 0x2710

    mul-int/lit16 v3, v3, 0x2710

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x64

    rem-int/lit8 v4, v0, 0x64

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 189
    .end local v0    # "intValue":I
    :cond_0
    return-object v1
.end method

.method public static makeUnixTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/SettingInfo$DateConverter;->makeCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 207
    .local v0, "myDOB":Ljava/util/Calendar;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static makeValue(III)Ljava/lang/String;
    .locals 3
    .param p0, "year"    # I
    .param p1, "monthOfYear"    # I
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 200
    mul-int/lit16 v1, p0, 0x2710

    mul-int/lit8 v2, p1, 0x64

    add-int/2addr v1, v2

    add-int v0, v1, p2

    .line 201
    .local v0, "iValue":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

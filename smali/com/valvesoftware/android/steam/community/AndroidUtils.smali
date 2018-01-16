.class public Lcom/valvesoftware/android/steam/community/AndroidUtils;
.super Ljava/lang/Object;
.source "AndroidUtils.java"


# direct methods
.method public static setTextViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 5
    .param p0, "v"    # Landroid/widget/TextView;
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 21
    if-nez p1, :cond_0

    .line 22
    const-string p1, ""

    .line 25
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_1
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 28
    .local v2, "len":I
    if-lez v2, :cond_1

    .line 29
    :try_start_1
    new-array v0, v2, [C

    .line 30
    .local v0, "arr":[C
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 32
    .local v3, "x":C
    if-ltz v3, :cond_2

    const/16 v4, 0x7f

    if-le v3, v4, :cond_3

    .line 33
    :cond_2
    const/16 v3, 0x3f

    .line 34
    :cond_3
    aput-char v3, v0, v1

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 36
    .end local v3    # "x":C
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v2}, Landroid/widget/TextView;->setText([CII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .end local v0    # "arr":[C
    .end local v1    # "k":I
    :catch_1
    move-exception v4

    .line 39
    :try_start_2
    const-string v4, " "

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_0
.end method

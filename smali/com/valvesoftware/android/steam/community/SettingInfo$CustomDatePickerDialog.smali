.class public Lcom/valvesoftware/android/steam/community/SettingInfo$CustomDatePickerDialog;
.super Landroid/app/DatePickerDialog;
.source "SettingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/valvesoftware/android/steam/community/SettingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomDatePickerDialog"
.end annotation


# instance fields
.field private m_bAllowSetTitle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p3, "cal"    # Ljava/util/Calendar;
    .param p4, "resid_title"    # I

    .prologue
    const/4 v6, 0x1

    .line 216
    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 214
    iput-boolean v6, p0, Lcom/valvesoftware/android/steam/community/SettingInfo$CustomDatePickerDialog;->m_bAllowSetTitle:Z

    .line 217
    invoke-virtual {p0, p4}, Lcom/valvesoftware/android/steam/community/SettingInfo$CustomDatePickerDialog;->setTitle(I)V

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/SettingInfo$CustomDatePickerDialog;->m_bAllowSetTitle:Z

    .line 219
    return-void
.end method


# virtual methods
.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/valvesoftware/android/steam/community/SettingInfo$CustomDatePickerDialog;->m_bAllowSetTitle:Z

    if-eqz v0, :cond_0

    .line 225
    invoke-super {p0, p1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 226
    :cond_0
    return-void
.end method

.class public Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;
.super Landroid/widget/LinearLayout;
.source "TwoFactorCodeView.java"

# interfaces
.implements Lcom/valvesoftware/android/steam/community/CloseableView;


# instance fields
.field private bEnableBackArrow:Z

.field private bEnableForwardArrow:Z

.field private mAccountName:Landroid/widget/TextView;

.field private mCode:Landroid/widget/TextView;

.field private mDangerColor:I

.field private mNormalColor:I

.field private mSteamguardState:Lcom/valvesoftware/android/steam/community/SteamguardState;

.field private mThermometer:Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;

.field private final mValveTime:Landroid/widget/TextView;

.field private stopUpdating:Z

.field private updateHandler:Landroid/os/Handler;

.field private updateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-boolean v2, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->stopUpdating:Z

    .line 42
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->updateHandler:Landroid/os/Handler;

    .line 43
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView$1;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;)V

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->updateRunnable:Ljava/lang/Runnable;

    .line 54
    const-string v1, "layout_inflater"

    .line 55
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 56
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030056

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 57
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->getScreenWidth()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mNormalColor:I

    .line 60
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mDangerColor:I

    .line 62
    const v1, 0x7f0e0150

    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mCode:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0e014f

    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mAccountName:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f0e0151

    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mThermometer:Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;

    .line 65
    const v1, 0x7f0e0154

    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mValveTime:Landroid/widget/TextView;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->stopUpdating:Z

    return v0
.end method

.method static synthetic access$100(Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->updateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private adjustWidth(I)V
    .locals 2
    .param p1, "newWidth"    # I

    .prologue
    .line 171
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 172
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    return-void
.end method

.method private enableArrow(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "bEnable"    # Z

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, "arrow":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 101
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :cond_0
    return-void

    .line 101
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private getScreenWidth()I
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 167
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method private static kernString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 119
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 121
    const/16 v2, 0x200a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->stopContinuousUpdates()V

    .line 195
    return-void
.end method

.method public enableBackArrow(Z)V
    .locals 0
    .param p1, "bEnable"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->bEnableBackArrow:Z

    .line 96
    return-void
.end method

.method public enableForwardArrow(Z)V
    .locals 0
    .param p1, "bEnable"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->bEnableForwardArrow:Z

    .line 92
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 178
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->startContinuousUpdates()V

    .line 179
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->getScreenWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->adjustWidth(I)V

    .line 190
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 184
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->stopContinuousUpdates()V

    .line 185
    return-void
.end method

.method public setSteamguardState(Lcom/valvesoftware/android/steam/community/SteamguardState;)V
    .locals 3
    .param p1, "sgState"    # Lcom/valvesoftware/android/steam/community/SteamguardState;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mAccountName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mAccountName:Landroid/widget/TextView;

    const-string v1, "EditModeTest"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->update()V

    .line 74
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->startContinuousUpdates()V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mSteamguardState:Lcom/valvesoftware/android/steam/community/SteamguardState;

    .line 81
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mAccountName:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mAccountName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mSteamguardState:Lcom/valvesoftware/android/steam/community/SteamguardState;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->update()V

    .line 84
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->startContinuousUpdates()V

    goto :goto_0

    .line 86
    :cond_2
    const-string v0, "twofactor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TwoFactorCodeView.java, setSteamguardState, else clause, for sgState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTokenGID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startContinuousUpdates()V
    .locals 4

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->stopUpdating:Z

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->stopUpdating:Z

    .line 108
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->updateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->updateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stopContinuousUpdates()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->stopUpdating:Z

    .line 113
    return-void
.end method

.method public update()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    const-string v0, "12345"

    .line 131
    .local v0, "code":Ljava/lang/String;
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mCode:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mCode:Landroid/widget/TextView;

    iget v6, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mNormalColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mThermometer:Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v4}, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->setValue(IZ)V

    .line 136
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mValveTime:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    .end local v0    # "code":Ljava/lang/String;
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mSteamguardState:Lcom/valvesoftware/android/steam/community/SteamguardState;

    invoke-virtual {v5}, Lcom/valvesoftware/android/steam/community/SteamguardState;->getTwoFactorToken()Lcom/valvesoftware/android/steam/community/TwoFactorToken;

    move-result-object v3

    .line 142
    .local v3, "token":Lcom/valvesoftware/android/steam/community/TwoFactorToken;
    if-eqz v3, :cond_4

    .line 143
    invoke-virtual {v3}, Lcom/valvesoftware/android/steam/community/TwoFactorToken;->secondsToNextChange()I

    move-result v2

    .line 144
    .local v2, "secondsToNextChange":I
    const/4 v5, 0x7

    if-ge v2, v5, :cond_1

    .line 146
    .local v1, "inDanger":Z
    :goto_1
    const v5, 0x7f0e014d

    iget-boolean v6, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->bEnableBackArrow:Z

    invoke-direct {p0, v5, v6}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->enableArrow(IZ)V

    .line 147
    const v5, 0x7f0e0153

    iget-boolean v6, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->bEnableForwardArrow:Z

    invoke-direct {p0, v5, v6}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->enableArrow(IZ)V

    .line 149
    invoke-virtual {v3}, Lcom/valvesoftware/android/steam/community/TwoFactorToken;->generateSteamGuardCode()Ljava/lang/String;

    move-result-object v0

    .line 150
    .restart local v0    # "code":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "code is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end code"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->kernString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mCode:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mCode:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget v5, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mDangerColor:I

    :goto_2
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mThermometer:Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;

    invoke-virtual {v5, v2, v1}, Lcom/valvesoftware/android/steam/community/TwoFactorCodeThermometerView;->setValue(IZ)V

    .line 158
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mValveTime:Landroid/widget/TextView;

    invoke-static {}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->getInstance()Lcom/valvesoftware/android/steam/community/TimeCorrector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/valvesoftware/android/steam/community/TimeCorrector;->bUsingAdjustedTime()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "inDanger":Z
    :cond_1
    move v1, v4

    .line 144
    goto :goto_1

    .line 154
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v1    # "inDanger":Z
    :cond_2
    iget v5, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->mNormalColor:I

    goto :goto_2

    .line 158
    :cond_3
    const/4 v4, 0x4

    goto :goto_3

    .line 160
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "inDanger":Z
    .end local v2    # "secondsToNextChange":I
    :cond_4
    const-string v4, "twofactor"

    const-string v5, "token is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iput-boolean v1, p0, Lcom/valvesoftware/android/steam/community/fragment/TwoFactorCodeView;->stopUpdating:Z

    goto :goto_0
.end method

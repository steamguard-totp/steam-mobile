.class public Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$RadioSelectorItemOnClickListener;,
        Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;
    }
.end annotation


# instance fields
.field private m_SettingsAdapter:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

.field private m_bLoggedOnPresentation:Z

.field private m_listView:Landroid/widget/ListView;

.field private m_owner:Landroid/app/Activity;

.field private m_settingsInfoArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/valvesoftware/android/steam/community/SettingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_viewProfile:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_owner:Landroid/app/Activity;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_settingsInfoArray:Ljava/util/ArrayList;

    .line 56
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_listView:Landroid/widget/ListView;

    .line 57
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_SettingsAdapter:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    .line 59
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_viewProfile:Landroid/view/View;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_bLoggedOnPresentation:Z

    return-void
.end method

.method static synthetic access$000(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;Lcom/valvesoftware/android/steam/community/model/Persona;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;
    .param p1, "x1"    # Lcom/valvesoftware/android/steam/community/model/Persona;
    .param p2, "x2"    # Landroid/widget/ImageView;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->getAvatar(Lcom/valvesoftware/android/steam/community/model/Persona;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_owner:Landroid/app/Activity;

    return-object v0
.end method

.method private getAvatar(Lcom/valvesoftware/android/steam/community/model/Persona;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "loggedInUser"    # Lcom/valvesoftware/android/steam/community/model/Persona;
    .param p2, "avatarView"    # Landroid/widget/ImageView;

    .prologue
    .line 138
    iget-object v1, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->fullAvatarUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getImageUrlRequestBuilder(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/ImageRequestBuilder;

    move-result-object v0

    .line 140
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/ImageRequestBuilder;
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$3;

    invoke-direct {v1, p0, p2}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$3;-><init>(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/ImageRequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ImageResponseListener;)V

    .line 152
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 153
    return-void
.end method

.method private setupUserAccountView(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->getView()Landroid/view/View;

    move-result-object p1

    .line 99
    if-nez p1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 101
    :cond_0
    const v6, 0x7f0e00de

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 102
    .local v5, "nameView":Landroid/widget/TextView;
    const v6, 0x7f0e00db

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 103
    .local v1, "avatarView":Landroid/widget/ImageView;
    const v6, 0x7f0e00dc

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 104
    .local v2, "avatarViewFrame":Landroid/widget/ImageView;
    const v6, 0x7f0e013f

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "avatarNameContainer":Landroid/view/View;
    const v6, 0x7f020182

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    new-instance v6, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$1;

    invoke-direct {v6, p0}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$2;

    invoke-direct {v7, p0, v5, v1}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$2;-><init>(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-static {v6, v7}, Lcom/valvesoftware/android/steam/community/PersonaRepository;->getDetailedPersonaInfo(Ljava/lang/String;Lcom/valvesoftware/android/steam/community/RepositoryCallback;)V

    .line 130
    const/4 v3, 0x0

    .line 132
    .local v3, "bOnline":Z
    if-eqz v3, :cond_1

    const v6, 0x7f020055

    :goto_1
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v3, :cond_2

    const v6, 0x7f0c006b

    :goto_2
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 134
    .local v4, "clrOnline":I
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 132
    .end local v4    # "clrOnline":I
    :cond_1
    const v6, 0x7f020054

    goto :goto_1

    .line 133
    :cond_2
    const v6, 0x7f0c0069

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_owner:Landroid/app/Activity;

    .line 72
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_SettingsAdapter:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_owner:Landroid/app/Activity;

    const v2, 0x7f03004f

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_settingsInfoArray:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;-><init>(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_SettingsAdapter:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_listView:Landroid/widget/ListView;

    if-nez v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_listView:Landroid/widget/ListView;

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_SettingsAdapter:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_owner:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_owner:Landroid/app/Activity;

    const v1, 0x7f0800b2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 83
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    const v0, 0x7f03004e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 90
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->refreshListView()V

    goto :goto_0
.end method

.method public refreshListView()V
    .locals 7

    .prologue
    .line 156
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->isLoggedIn()Z

    move-result v5

    iput-boolean v5, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_bLoggedOnPresentation:Z

    .line 158
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_settingsInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 160
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_viewProfile:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->setupUserAccountView(Landroid/view/View;)V

    .line 163
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetSettingInfoDB()Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    move-result-object v4

    .line 164
    .local v4, "settingInfoDb":Lcom/valvesoftware/android/steam/community/SettingInfoDB;
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_settingsInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->GetSettingsList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 165
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_settingsInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "j":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    if-lez v2, :cond_4

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "bValid":Z
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_settingsInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/valvesoftware/android/steam/community/SettingInfo;

    .line 169
    .local v3, "settingInfo":Lcom/valvesoftware/android/steam/community/SettingInfo;
    sget-object v5, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$4;->$SwitchMap$com$valvesoftware$android$steam$community$SettingInfo$AccessRight:[I

    iget-object v6, v3, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_access:Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;

    invoke-virtual {v6}, Lcom/valvesoftware/android/steam/community/SettingInfo$AccessRight;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 181
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    sget-object v5, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$4;->$SwitchMap$com$valvesoftware$android$steam$community$SettingInfo$SettingType:[I

    iget-object v6, v3, Lcom/valvesoftware/android/steam/community/SettingInfo;->m_type:Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;

    invoke-virtual {v6}, Lcom/valvesoftware/android/steam/community/SettingInfo$SettingType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 196
    const/4 v0, 0x0

    .line 199
    :cond_1
    :pswitch_0
    if-nez v0, :cond_2

    .line 200
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_settingsInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    move v2, v1

    .line 201
    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_0

    .line 171
    .end local v2    # "j":I
    .restart local v1    # "j":I
    :pswitch_1
    const/4 v0, 0x1

    .line 172
    goto :goto_1

    .line 174
    :pswitch_2
    iget-boolean v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_bLoggedOnPresentation:Z

    .line 175
    goto :goto_1

    .line 177
    :pswitch_3
    iget-object v5, v4, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingSslUntrustedPrompt:Lcom/valvesoftware/android/steam/community/SettingInfo;

    if-ne v3, v5, :cond_0

    .line 178
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_owner:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/valvesoftware/android/steam/community/SettingInfo;->getRadioSelectorItemValue(Landroid/content/Context;)Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;

    move-result-object v5

    iget v5, v5, Lcom/valvesoftware/android/steam/community/SettingInfo$RadioSelectorItem;->value:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    const/4 v0, 0x1

    :goto_2
    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 202
    .end local v0    # "bValid":Z
    .end local v3    # "settingInfo":Lcom/valvesoftware/android/steam/community/SettingInfo;
    :cond_4
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->m_SettingsAdapter:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;

    invoke-virtual {v5}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$SettingsListAdapter;->notifyDataSetChanged()V

    .line 203
    return-void

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 181
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

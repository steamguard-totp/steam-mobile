.class public Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;
.super Landroid/support/v4/app/Fragment;
.source "ChatFragment.java"


# instance fields
.field private chatIsOfflineNotice:Landroid/view/View;

.field private chatPartnerAvatarUrl:Ljava/lang/String;

.field private chatPartnerPersonaName:Ljava/lang/String;

.field private chatPartnerSteamId:Ljava/lang/String;

.field private chatViewAdapter:Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

.field private chatViewContents:Landroid/widget/ListView;

.field private chatViewMessageTextBox:Landroid/widget/EditText;

.field private clearChatHistoryListener:Landroid/view/View$OnClickListener;

.field private localDb:Lcom/valvesoftware/android/steam/community/LocalDb;

.field private final messageListForDisplay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
            ">;"
        }
    .end annotation
.end field

.field private passwordWarningShown:Z

.field private final successfullySentAndReceivedMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final toBeSentMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
            ">;"
        }
    .end annotation
.end field

.field private toast:Landroid/widget/Toast;

.field private umqCommunicator:Lcom/valvesoftware/android/steam/community/UmqCommunicator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->toBeSentMessages:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->successfullySentAndReceivedMessages:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->messageListForDisplay:Ljava/util/List;

    .line 53
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatViewContents:Landroid/widget/ListView;

    .line 54
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatViewAdapter:Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    .line 55
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatViewMessageTextBox:Landroid/widget/EditText;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->passwordWarningShown:Z

    .line 66
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$1;

    invoke-direct {v0, p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->clearChatHistoryListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->clearChatHistory()V

    return-void
.end method

.method static synthetic access$100(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerSteamId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Lcom/valvesoftware/android/steam/community/LocalDb;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->localDb:Lcom/valvesoftware/android/steam/community/LocalDb;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->addMessagesReloadedFromDb(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerAvatarUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerPersonaName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->setTitle()V

    return-void
.end method

.method static synthetic access$200(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->appendToSuccessFullySentAndReceivedList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->toBeSentMessages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->getChatViewAdapter()Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatViewAdapter:Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatIsOfflineNotice:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->sendMessage()V

    return-void
.end method

.method static synthetic access$800(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->sendTypingNotification()V

    return-void
.end method

.method static synthetic access$900(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatViewMessageTextBox:Landroid/widget/EditText;

    return-object v0
.end method

.method private declared-synchronized addMessagesReloadedFromDb(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "messagesFromDb":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->successfullySentAndReceivedMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 333
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->successfullySentAndReceivedMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 334
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->showCompleteListOfMessagesAndToBeSentMessages()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    monitor-exit p0

    return-void

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized appendToSuccessFullySentAndReceivedList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "umqMessages":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 309
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 301
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    .line 302
    .local v0, "umqMessage":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    iget-object v2, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->chatPartnerSteamId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 303
    iget-object v2, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->chatPartnerSteamId:Ljava/lang/String;

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerSteamId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 304
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->successfullySentAndReceivedMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 299
    .end local v0    # "umqMessage":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 308
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->showCompleteListOfMessagesAndToBeSentMessages()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private clearChatHistory()V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->localDb:Lcom/valvesoftware/android/steam/community/LocalDb;

    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerSteamId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/valvesoftware/android/steam/community/LocalDb;->deleteMessages(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->messageListForDisplay:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 387
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->successfullySentAndReceivedMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 388
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->getChatViewAdapter()Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->notifyDataSetChanged()V

    .line 390
    :cond_0
    return-void
.end method

.method private clearMessageBox()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatViewMessageTextBox:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 381
    return-void
.end method

.method private getChatViewAdapter()Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;
    .locals 6

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 290
    .local v3, "act":Landroid/support/v4/app/FragmentActivity;
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatViewAdapter:Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->messageListForDisplay:Ljava/util/List;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerAvatarUrl:Ljava/lang/String;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;-><init>(Ljava/util/List;Landroid/view/LayoutInflater;Landroid/support/v4/app/FragmentActivity;Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatViewAdapter:Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatViewAdapter:Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatViewContents:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->attach(Landroid/widget/ListView;)V

    .line 295
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatViewAdapter:Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    return-object v0
.end method

.method private getTypedMessage()Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    .locals 2

    .prologue
    .line 393
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/model/UmqMessage;-><init>()V

    .line 394
    .local v0, "message":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatViewMessageTextBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->text:Ljava/lang/String;

    .line 395
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerSteamId:Ljava/lang/String;

    iput-object v1, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->chatPartnerSteamId:Ljava/lang/String;

    .line 397
    return-object v0
.end method

.method private loadChatParticipantInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "steamId"    # Ljava/lang/String;

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 439
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getUserSummaryRequestBuilder(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v0

    .line 411
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$10;

    invoke-direct {v1, p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$10;-><init>(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 438
    invoke-direct {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    goto :goto_0
.end method

.method private loadChats()V
    .locals 3

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentOrActivityIsActive(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    :goto_0
    return-void

    .line 314
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 316
    .local v0, "h":Landroid/os/Handler;
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v1

    new-instance v2, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7;

    invoke-direct {v2, p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7;-><init>(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private markMessagesRead()V
    .locals 3

    .prologue
    .line 352
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v1

    new-instance v2, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$8;

    invoke-direct {v2, p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$8;-><init>(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)V

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 359
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerSteamId:Ljava/lang/String;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getMarkMessagesReadRequestBuilder(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v0

    .line 361
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$9;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$9;-><init>(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 371
    invoke-direct {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 372
    return-void
.end method

.method private sendMessage()V
    .locals 3

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->getTypedMessage()Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    move-result-object v0

    .line 280
    .local v0, "message":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->clearMessageBox()V

    .line 281
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->toBeSentMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->showCompleteListOfMessagesAndToBeSentMessages()V

    .line 285
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->umqCommunicator:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerSteamId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->sendMessage(Lcom/valvesoftware/android/steam/community/model/UmqMessage;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V
    .locals 1
    .param p1, "rb"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    .prologue
    .line 230
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 231
    return-void
.end method

.method private sendTypingNotification()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->umqCommunicator:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    if-nez v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->umqCommunicator:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerSteamId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->sendTypingNotification(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setTitle()V
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    .line 443
    .local v0, "mainActivity":Lcom/valvesoftware/android/steam/community/activity/MainActivity;
    if-eqz v0, :cond_0

    .line 444
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerPersonaName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 446
    :cond_0
    return-void
.end method

.method private setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .prologue
    .line 401
    if-nez p1, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setupControls(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 234
    const v1, 0x7f0e00c8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatIsOfflineNotice:Landroid/view/View;

    .line 235
    const v1, 0x7f0e00c9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatViewContents:Landroid/widget/ListView;

    .line 236
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatViewContents:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 237
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatViewContents:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 238
    const v1, 0x7f0e00cc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatViewMessageTextBox:Landroid/widget/EditText;

    .line 239
    const v1, 0x7f0e00cd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 241
    .local v0, "chatSendMessageButton":Landroid/widget/Button;
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$4;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$4;-><init>(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatViewMessageTextBox:Landroid/widget/EditText;

    new-instance v2, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$5;

    invoke-direct {v2, p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$5;-><init>(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 259
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatViewMessageTextBox:Landroid/widget/EditText;

    new-instance v2, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$6;

    invoke-direct {v2, p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$6;-><init>(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 265
    return-void
.end method

.method private setupDeleteButton()V
    .locals 3

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    .line 451
    .local v1, "mainActivity":Lcom/valvesoftware/android/steam/community/activity/MainActivity;
    new-instance v0, Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;-><init>()V

    .line 452
    .local v0, "extraMenuItem":Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;
    const v2, 0x7f0200b0

    iput v2, v0, Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;->iconResourceId:I

    .line 454
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->clearChatHistoryListener:Landroid/view/View$OnClickListener;

    iput-object v2, v0, Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;->onClickListener:Landroid/view/View$OnClickListener;

    .line 455
    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->setExtraToolbarItem(Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;)V

    .line 456
    return-void
.end method

.method private declared-synchronized showCompleteListOfMessagesAndToBeSentMessages()V
    .locals 3

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 339
    .local v1, "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->successfullySentAndReceivedMessages:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 342
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->toBeSentMessages:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 343
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->messageListForDisplay:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 344
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->messageListForDisplay:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 345
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->getChatViewAdapter()Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    move-result-object v0

    .line 346
    .local v0, "chatViewAdapter":Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->notifyDataSetChanged()V

    .line 347
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->markMessagesRead()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    .end local v0    # "chatViewAdapter":Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;
    :cond_0
    monitor-exit p0

    return-void

    .line 338
    .end local v1    # "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 88
    const v1, 0x7f030021

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "fragmentView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->setupControls(Landroid/view/View;)V

    .line 91
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 225
    :cond_0
    invoke-static {}, Lcom/valvesoftware/android/steam/community/NotificationSender;->getInstance()Lcom/valvesoftware/android/steam/community/NotificationSender;

    move-result-object v0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerPersonaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/NotificationSender;->clearRecentNotificationsTrackingFor(Ljava/lang/String;)V

    .line 226
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 227
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 96
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 97
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getLocalDb()Lcom/valvesoftware/android/steam/community/LocalDb;

    move-result-object v1

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->localDb:Lcom/valvesoftware/android/steam/community/LocalDb;

    .line 103
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 104
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 105
    const-string v1, "chatPartnerSteamIdKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "chatPartnerSteamIdKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerSteamId:Ljava/lang/String;

    .line 106
    const-string v1, "chatPartnerAvatarUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "chatPartnerAvatarUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerAvatarUrl:Ljava/lang/String;

    .line 107
    const-string v1, "chatPartnerPersonaNameKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, "chatPartnerPersonaNameKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerPersonaName:Ljava/lang/String;

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerPersonaName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerAvatarUrl:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerSteamId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->loadChatParticipantInfo(Ljava/lang/String;)V

    .line 114
    :cond_3
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->toBeSentMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 115
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->showCompleteListOfMessagesAndToBeSentMessages()V

    .line 116
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->loadChats()V

    .line 118
    invoke-static {}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->getInstance()Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    move-result-object v1

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->umqCommunicator:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    .line 119
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->umqCommunicator:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    new-instance v3, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;

    invoke-direct {v3, p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;-><init>(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)V

    invoke-virtual {v1, v3}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->setChatStateListener(Lcom/valvesoftware/android/steam/community/ChatStateListener;)V

    .line 185
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->umqCommunicator:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerSteamId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->updateChatMessages(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->umqCommunicator:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    new-instance v3, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$3;

    invoke-direct {v3, p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$3;-><init>(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)V

    invoke-virtual {v1, v3}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->setChatLoggedInStatusChangedListener(Lcom/valvesoftware/android/steam/community/LoggedInStatusChangedListener;)V

    .line 207
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatIsOfflineNotice:Landroid/view/View;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->umqCommunicator:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->isLoggedInToChat()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-boolean v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->passwordWarningShown:Z

    if-nez v1, :cond_4

    .line 210
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v3, 0x7f080075

    invoke-static {v1, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->toast:Landroid/widget/Toast;

    .line 211
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->toast:Landroid/widget/Toast;

    const/16 v3, 0x31

    const/16 v4, 0x6e

    invoke-virtual {v1, v3, v2, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 212
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 213
    iput-boolean v5, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->passwordWarningShown:Z

    .line 216
    :cond_4
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->setupDeleteButton()V

    .line 217
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->setTitle()V

    goto/16 :goto_0

    .line 105
    :cond_5
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerSteamId:Ljava/lang/String;

    goto/16 :goto_1

    .line 106
    :cond_6
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerAvatarUrl:Ljava/lang/String;

    goto/16 :goto_2

    .line 107
    :cond_7
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerPersonaName:Ljava/lang/String;

    goto :goto_3

    :cond_8
    move v1, v2

    .line 207
    goto :goto_4
.end method

.method public resendMessage(Lcom/valvesoftware/android/steam/community/model/UmqMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 276
    :goto_0
    return-void

    .line 270
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->hadSendError:Z

    .line 271
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->getChatViewAdapter()Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    move-result-object v0

    .line 272
    .local v0, "chatViewAdapter":Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;
    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->notifyDataSetChanged()V

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->umqCommunicator:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->chatPartnerSteamId:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->sendMessage(Lcom/valvesoftware/android/steam/community/model/UmqMessage;Ljava/lang/String;)V

    goto :goto_0
.end method

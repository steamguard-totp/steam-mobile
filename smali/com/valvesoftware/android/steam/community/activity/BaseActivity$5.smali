.class Lcom/valvesoftware/android/steam/community/activity/BaseActivity$5;
.super Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$5;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-direct {p0}, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 264
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$5;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->access$300(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Landroid/text/TextWatcher;

    move-result-object v0

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return v3

    .line 266
    :cond_0
    if-eqz p1, :cond_1

    .line 267
    :goto_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$5;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->access$300(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, p1, v2, v2, v1}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 266
    :cond_1
    const-string p1, ""

    goto :goto_1
.end method

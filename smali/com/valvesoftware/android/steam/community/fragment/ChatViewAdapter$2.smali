.class Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$2;
.super Ljava/lang/Object;
.source "ChatViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;-><init>(Ljava/util/List;Landroid/view/LayoutInflater;Landroid/support/v4/app/FragmentActivity;Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$2;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 80
    :try_start_0
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$2;->val$activity:Landroid/support/v4/app/FragmentActivity;

    const-string v8, "clipboard"

    invoke-virtual {v5, v8}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 83
    .local v1, "clipBoard":Landroid/text/ClipboardManager;
    if-eqz v1, :cond_0

    instance-of v5, p1, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 84
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const/4 v5, 0x2

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    .line 88
    .local v3, "screenpos":[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 90
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter$2;->val$activity:Landroid/support/v4/app/FragmentActivity;

    const v8, 0x7f0800f3

    const/4 v9, 0x0

    invoke-static {v5, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 91
    .local v4, "toast":Landroid/widget/Toast;
    const/16 v5, 0x31

    const/4 v8, 0x0

    const/4 v9, 0x1

    aget v9, v3, v9

    invoke-virtual {v4, v5, v8, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 92
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 99
    .end local v1    # "clipBoard":Landroid/text/ClipboardManager;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "screenpos":[I
    .end local v4    # "toast":Landroid/widget/Toast;
    :goto_0
    return v5

    :catch_0
    move-exception v5

    :cond_0
    move v5, v7

    goto :goto_0

    .line 87
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

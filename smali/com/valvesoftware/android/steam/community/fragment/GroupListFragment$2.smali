.class Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$2;
.super Ljava/lang/Object;
.source "GroupListFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->setupEventListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 109
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 106
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->access$100(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;Ljava/lang/String;)V

    .line 103
    return-void
.end method

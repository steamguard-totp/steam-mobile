.class Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lcom/valvesoftware/android/steam/community/RepositoryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->setupUserAccountView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/valvesoftware/android/steam/community/RepositoryCallback",
        "<",
        "Lcom/valvesoftware/android/steam/community/model/Persona;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

.field final synthetic val$avatarView:Landroid/widget/ImageView;

.field final synthetic val$nameView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$2;->val$nameView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$2;->val$avatarView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataAvailable(Lcom/valvesoftware/android/steam/community/model/Persona;)V
    .locals 2
    .param p1, "persona"    # Lcom/valvesoftware/android/steam/community/model/Persona;

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$2;->val$nameView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->personaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$2;->val$avatarView:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment;Lcom/valvesoftware/android/steam/community/model/Persona;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public bridge synthetic dataAvailable(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 116
    check-cast p1, Lcom/valvesoftware/android/steam/community/model/Persona;

    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/SettingsFragment$2;->dataAvailable(Lcom/valvesoftware/android/steam/community/model/Persona;)V

    return-void
.end method

.method public end()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

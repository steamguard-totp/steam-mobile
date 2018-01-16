.class Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment$1;
.super Ljava/lang/Object;
.source "FriendSearchFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->display()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/valvesoftware/android/steam/community/model/Persona;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/valvesoftware/android/steam/community/model/Persona;Lcom/valvesoftware/android/steam/community/model/Persona;)I
    .locals 2
    .param p1, "persona"    # Lcom/valvesoftware/android/steam/community/model/Persona;
    .param p2, "persona2"    # Lcom/valvesoftware/android/steam/community/model/Persona;

    .prologue
    .line 43
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->personaName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->personaName:Ljava/lang/String;

    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/model/Persona;->personaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->personaName:Ljava/lang/String;

    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/model/Persona;->personaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->steamId:Ljava/lang/String;

    iget-object v1, p2, Lcom/valvesoftware/android/steam/community/model/Persona;->steamId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 40
    check-cast p1, Lcom/valvesoftware/android/steam/community/model/Persona;

    check-cast p2, Lcom/valvesoftware/android/steam/community/model/Persona;

    invoke-virtual {p0, p1, p2}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment$1;->compare(Lcom/valvesoftware/android/steam/community/model/Persona;Lcom/valvesoftware/android/steam/community/model/Persona;)I

    move-result v0

    return v0
.end method

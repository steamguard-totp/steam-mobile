.class Lcom/valvesoftware/android/steam/community/GcmRegistrar$2$1;
.super Ljava/lang/Object;
.source "GcmRegistrar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/GcmRegistrar$2;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/valvesoftware/android/steam/community/GcmRegistrar$2;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/GcmRegistrar$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/GcmRegistrar$2;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar$2$1;->this$1:Lcom/valvesoftware/android/steam/community/GcmRegistrar$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar$2$1;->this$1:Lcom/valvesoftware/android/steam/community/GcmRegistrar$2;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/GcmRegistrar$2;->this$0:Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->access$300(Lcom/valvesoftware/android/steam/community/GcmRegistrar;Z)V

    .line 140
    return-void
.end method

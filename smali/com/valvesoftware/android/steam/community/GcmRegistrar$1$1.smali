.class Lcom/valvesoftware/android/steam/community/GcmRegistrar$1$1;
.super Ljava/lang/Object;
.source "GcmRegistrar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/GcmRegistrar$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/valvesoftware/android/steam/community/GcmRegistrar$1;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/GcmRegistrar$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/GcmRegistrar$1;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar$1$1;->this$1:Lcom/valvesoftware/android/steam/community/GcmRegistrar$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/GcmRegistrar$1$1;->this$1:Lcom/valvesoftware/android/steam/community/GcmRegistrar$1;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/GcmRegistrar$1;->this$0:Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->registerWithGcm()V

    .line 56
    return-void
.end method

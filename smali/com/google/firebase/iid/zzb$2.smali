.class Lcom/google/firebase/iid/zzb$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/iid/zzb;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic zzciN:Lcom/google/firebase/iid/zzb;

.field final synthetic zzciO:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzb;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/iid/zzb$2;->zzciN:Lcom/google/firebase/iid/zzb;

    iput-object p2, p0, Lcom/google/firebase/iid/zzb$2;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/firebase/iid/zzb$2;->zzciO:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/iid/zzb$2;->zzciN:Lcom/google/firebase/iid/zzb;

    iget-object v1, p0, Lcom/google/firebase/iid/zzb$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzb;->zzm(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/firebase/iid/zzb$2;->zzciN:Lcom/google/firebase/iid/zzb;

    iget-object v1, p0, Lcom/google/firebase/iid/zzb$2;->zzciO:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/google/firebase/iid/zzb;->zza(Lcom/google/firebase/iid/zzb;Landroid/content/Intent;)V

    return-void
.end method

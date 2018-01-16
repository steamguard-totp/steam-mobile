.class Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzarP:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

.field final synthetic zzarQ:Lcom/google/android/gms/cast/framework/media/zzf;

.field final synthetic zzarR:Lcom/google/android/gms/cast/framework/media/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;Lcom/google/android/gms/cast/framework/media/zzf;Lcom/google/android/gms/cast/framework/media/zzf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment$2;->zzarP:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment$2;->zzarQ:Lcom/google/android/gms/cast/framework/media/zzf;

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment$2;->zzarR:Lcom/google/android/gms/cast/framework/media/zzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment$2;->zzarP:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment$2;->zzarQ:Lcom/google/android/gms/cast/framework/media/zzf;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment$2;->zzarR:Lcom/google/android/gms/cast/framework/media/zzf;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zza(Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;Lcom/google/android/gms/cast/framework/media/zzf;Lcom/google/android/gms/cast/framework/media/zzf;)V

    return-void
.end method

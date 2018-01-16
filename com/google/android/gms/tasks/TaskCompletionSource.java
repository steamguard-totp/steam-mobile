package com.google.android.gms.tasks;

public class TaskCompletionSource<TResult> {
    private final zzh<TResult> zzbLF = new zzh();

    public Task<TResult> getTask() {
        return this.zzbLF;
    }

    public void setException(Exception exception) {
        this.zzbLF.setException(exception);
    }

    public void setResult(TResult tResult) {
        this.zzbLF.setResult(tResult);
    }

    public boolean trySetException(Exception exception) {
        return this.zzbLF.trySetException(exception);
    }
}

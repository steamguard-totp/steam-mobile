package android.support.v4.os;

import android.annotation.TargetApi;
import android.os.AsyncTask;

@TargetApi(11)
class AsyncTaskCompatHoneycomb {
    static <Params, Progress, Result> void executeParallel(AsyncTask<Params, Progress, Result> task, Params... params) {
        task.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, params);
    }
}

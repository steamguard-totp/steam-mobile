package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.Notification.Builder;

@TargetApi(11)
public interface NotificationBuilderWithBuilderAccessor {
    Notification build();

    Builder getBuilder();
}

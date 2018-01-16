package com.google.android.gms.cast.framework;

import android.content.Context;
import java.util.List;

public interface OptionsProvider {
    List<SessionProvider> getAdditionalSessionProviders(Context context);

    CastOptions getCastOptions(Context context);
}

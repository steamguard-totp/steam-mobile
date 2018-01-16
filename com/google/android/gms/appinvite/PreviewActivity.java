package com.google.android.gms.appinvite;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TabHost;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import java.util.ArrayList;
import java.util.Iterator;

public class PreviewActivity extends Activity {
    private View zza(Context context, ViewGroup viewGroup, Bundle bundle) {
        View inflate = LayoutInflater.from(context).inflate(bundle.getInt("com.google.android.gms.appinvite.LAYOUT_RES_ID"), viewGroup, false);
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("com.google.android.gms.appinvite.VIEWS");
        if (parcelableArrayList != null) {
            Iterator it = parcelableArrayList.iterator();
            while (it.hasNext()) {
                zza(inflate, (Bundle) it.next());
            }
        }
        return inflate;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void zza(android.view.View r9, android.os.Bundle r10) {
        /*
        r8 = this;
        r3 = 0;
        r4 = -1;
        r0 = "View_id";
        r0 = r10.getInt(r0);
        r2 = r9.findViewById(r0);
        r0 = r10.keySet();
        r5 = r0.iterator();
    L_0x0014:
        r0 = r5.hasNext();
        if (r0 == 0) goto L_0x00fd;
    L_0x001a:
        r0 = r5.next();
        r0 = (java.lang.String) r0;
        r1 = r0.hashCode();
        switch(r1) {
            case -1829808865: goto L_0x003e;
            case -499175494: goto L_0x0052;
            case -111184848: goto L_0x0070;
            case 573559753: goto L_0x005c;
            case 966644059: goto L_0x0034;
            case 1729346977: goto L_0x0066;
            case 1920443715: goto L_0x0048;
            default: goto L_0x0027;
        };
    L_0x0027:
        r1 = r4;
    L_0x0028:
        switch(r1) {
            case 0: goto L_0x002c;
            case 1: goto L_0x007a;
            case 2: goto L_0x0082;
            case 3: goto L_0x00a6;
            case 4: goto L_0x00b6;
            case 5: goto L_0x00c6;
            case 6: goto L_0x00dc;
            default: goto L_0x002b;
        };
    L_0x002b:
        goto L_0x0014;
    L_0x002c:
        r0 = r10.getInt(r0);
        r2.setBackgroundColor(r0);
        goto L_0x0014;
    L_0x0034:
        r1 = "View_backgroundColor";
        r1 = r0.equals(r1);
        if (r1 == 0) goto L_0x0027;
    L_0x003c:
        r1 = r3;
        goto L_0x0028;
    L_0x003e:
        r1 = "View_minHeight";
        r1 = r0.equals(r1);
        if (r1 == 0) goto L_0x0027;
    L_0x0046:
        r1 = 1;
        goto L_0x0028;
    L_0x0048:
        r1 = "View_onClickListener";
        r1 = r0.equals(r1);
        if (r1 == 0) goto L_0x0027;
    L_0x0050:
        r1 = 2;
        goto L_0x0028;
    L_0x0052:
        r1 = "TextView_text";
        r1 = r0.equals(r1);
        if (r1 == 0) goto L_0x0027;
    L_0x005a:
        r1 = 3;
        goto L_0x0028;
    L_0x005c:
        r1 = "TextView_textColor";
        r1 = r0.equals(r1);
        if (r1 == 0) goto L_0x0027;
    L_0x0064:
        r1 = 4;
        goto L_0x0028;
    L_0x0066:
        r1 = "TextView_isTitle";
        r1 = r0.equals(r1);
        if (r1 == 0) goto L_0x0027;
    L_0x006e:
        r1 = 5;
        goto L_0x0028;
    L_0x0070:
        r1 = "WebView_data";
        r1 = r0.equals(r1);
        if (r1 == 0) goto L_0x0027;
    L_0x0078:
        r1 = 6;
        goto L_0x0028;
    L_0x007a:
        r0 = r10.getInt(r0);
        r2.setMinimumHeight(r0);
        goto L_0x0014;
    L_0x0082:
        r0 = r10.getString(r0);
        r1 = r0.hashCode();
        switch(r1) {
            case 94756344: goto L_0x009c;
            default: goto L_0x008d;
        };
    L_0x008d:
        r0 = r4;
    L_0x008e:
        switch(r0) {
            case 0: goto L_0x0092;
            default: goto L_0x0091;
        };
    L_0x0091:
        goto L_0x0014;
    L_0x0092:
        r0 = new com.google.android.gms.appinvite.PreviewActivity$1;
        r0.<init>(r8);
        r2.setOnClickListener(r0);
        goto L_0x0014;
    L_0x009c:
        r1 = "close";
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x008d;
    L_0x00a4:
        r0 = r3;
        goto L_0x008e;
    L_0x00a6:
        r1 = r2 instanceof android.widget.TextView;
        if (r1 == 0) goto L_0x0014;
    L_0x00aa:
        r1 = r2;
        r1 = (android.widget.TextView) r1;
        r0 = r10.getCharSequence(r0);
        r1.setText(r0);
        goto L_0x0014;
    L_0x00b6:
        r1 = r2 instanceof android.widget.TextView;
        if (r1 == 0) goto L_0x0014;
    L_0x00ba:
        r1 = r2;
        r1 = (android.widget.TextView) r1;
        r0 = r10.getInt(r0);
        r1.setTextColor(r0);
        goto L_0x0014;
    L_0x00c6:
        r1 = r2 instanceof android.widget.TextView;
        if (r1 == 0) goto L_0x0014;
    L_0x00ca:
        r0 = r10.getBoolean(r0);
        if (r0 == 0) goto L_0x0014;
    L_0x00d0:
        r0 = r2;
        r0 = (android.widget.TextView) r0;
        r0 = r0.getText();
        r8.setTitle(r0);
        goto L_0x0014;
    L_0x00dc:
        r1 = r2 instanceof android.view.ViewGroup;
        if (r1 == 0) goto L_0x0014;
    L_0x00e0:
        r1 = new android.webkit.WebView;
        r1.<init>(r8);
        r0 = r10.getString(r0);
        r6 = "text/html; charset=utf-8";
        r7 = "UTF-8";
        r1.loadData(r0, r6, r7);
        r0 = r2;
        r0 = (android.view.ViewGroup) r0;
        r6 = new android.view.ViewGroup$LayoutParams;
        r6.<init>(r4, r4);
        r0.addView(r1, r6);
        goto L_0x0014;
    L_0x00fd:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.appinvite.PreviewActivity.zza(android.view.View, android.os.Bundle):void");
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getCallingActivity() == null || !"com.google.android.gms".equals(getCallingActivity().getPackageName())) {
            finish();
            return;
        }
        try {
            Context createPackageContext = createPackageContext("com.google.android.gms", 0);
            Bundle extras = getIntent().getExtras();
            View zza = zza(createPackageContext, null, extras);
            if (zza == null) {
                finish();
                return;
            }
            TabHost tabHost = (TabHost) zza.findViewById(16908306);
            TabWidget tabWidget = (TabWidget) zza.findViewById(16908307);
            ArrayList parcelableArrayList = extras.getParcelableArrayList("com.google.android.gms.appinvite.TABS");
            if (!(tabHost == null || tabWidget == null || parcelableArrayList == null)) {
                tabHost.setup();
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    extras = (Bundle) it.next();
                    TabSpec newTabSpec = tabHost.newTabSpec(extras.getString("tabTag"));
                    newTabSpec.setContent(extras.getInt("tabContentId"));
                    newTabSpec.setIndicator(zza(createPackageContext, tabWidget, extras));
                    tabHost.addTab(newTabSpec);
                }
            }
            setContentView(zza);
        } catch (NameNotFoundException e) {
            finish();
        }
    }
}

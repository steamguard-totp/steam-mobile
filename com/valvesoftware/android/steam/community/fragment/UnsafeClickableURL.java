package com.valvesoftware.android.steam.community.fragment;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.support.v4.app.FragmentActivity;
import android.text.style.URLSpan;
import android.view.View;
import com.valvesoftware.android.steam.community.R;

public class UnsafeClickableURL extends URLSpan {
    private final FragmentActivity activity;
    private boolean m_bShowUnsafeWarning = false;

    public UnsafeClickableURL(URLSpan other, boolean bShowUnsafeWarning, FragmentActivity activity) {
        super(other.getURL());
        this.m_bShowUnsafeWarning = bShowUnsafeWarning;
        this.activity = activity;
    }

    public void HandleUserProcceedSelected(View v) {
        try {
            super.onClick(v);
        } catch (Exception e) {
        }
    }

    public void onClick(View v) {
        if (this.m_bShowUnsafeWarning) {
            final View finalView = v;
            Builder builder = new Builder(this.activity);
            builder.setTitle(R.string.nonsteam_link_title);
            builder.setMessage(this.activity.getString(R.string.nonsteam_link_text) + "\n\n" + getURL());
            builder.setPositiveButton(R.string.nonsteam_link_ok, new OnClickListener() {
                public void onClick(DialogInterface dialog, int which) {
                    UnsafeClickableURL.this.HandleUserProcceedSelected(finalView);
                }
            });
            builder.setNegativeButton(R.string.Cancel, null);
            builder.create().show();
            return;
        }
        HandleUserProcceedSelected(v);
    }
}

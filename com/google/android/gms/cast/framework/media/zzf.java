package com.google.android.gms.cast.framework.media;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.RadioButton;
import android.widget.TextView;
import com.google.android.gms.R;
import com.google.android.gms.cast.MediaTrack;
import java.util.ArrayList;
import java.util.List;

public class zzf extends ArrayAdapter<MediaTrack> implements OnClickListener {
    private final Context mContext;
    private int zzarS;

    private class zza {
        final TextView zzarT;
        final RadioButton zzarU;

        private zza(zzf com_google_android_gms_cast_framework_media_zzf, TextView textView, RadioButton radioButton) {
            this.zzarT = textView;
            this.zzarU = radioButton;
        }
    }

    public zzf(Context context, List<MediaTrack> list, int i) {
        List arrayList;
        int i2 = R.layout.cast_tracks_chooser_dialog_row_layout;
        if (list == null) {
            arrayList = new ArrayList();
        }
        super(context, i2, arrayList);
        this.zzarS = -1;
        this.mContext = context;
        this.zzarS = i;
    }

    private String zza(MediaTrack mediaTrack, int i) {
        Object name = mediaTrack.getName();
        if (!TextUtils.isEmpty(name)) {
            return name;
        }
        if (mediaTrack.getSubtype() == 2) {
            return this.mContext.getString(R.string.cast_tracks_chooser_dialog_closed_captions);
        }
        if (!TextUtils.isEmpty(mediaTrack.getLanguage())) {
            name = MediaUtils.getTrackLanguage(mediaTrack).getDisplayLanguage();
            if (!TextUtils.isEmpty(name)) {
                return name;
            }
        }
        return this.mContext.getString(R.string.cast_tracks_chooser_dialog_default_track_name, new Object[]{Integer.valueOf(i + 1)});
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        zza com_google_android_gms_cast_framework_media_zzf_zza;
        View view2;
        if (view == null) {
            view = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.cast_tracks_chooser_dialog_row_layout, viewGroup, false);
            com_google_android_gms_cast_framework_media_zzf_zza = new zza((TextView) view.findViewById(R.id.text), (RadioButton) view.findViewById(R.id.radio));
            view.setTag(com_google_android_gms_cast_framework_media_zzf_zza);
            view2 = view;
        } else {
            com_google_android_gms_cast_framework_media_zzf_zza = (zza) view.getTag();
            view2 = view;
        }
        if (com_google_android_gms_cast_framework_media_zzf_zza == null) {
            return null;
        }
        com_google_android_gms_cast_framework_media_zzf_zza.zzarU.setTag(Integer.valueOf(i));
        com_google_android_gms_cast_framework_media_zzf_zza.zzarU.setChecked(this.zzarS == i);
        view2.setOnClickListener(this);
        com_google_android_gms_cast_framework_media_zzf_zza.zzarT.setText(zza((MediaTrack) getItem(i), i));
        return view2;
    }

    public void onClick(View view) {
        this.zzarS = ((Integer) ((zza) view.getTag()).zzarU.getTag()).intValue();
        notifyDataSetChanged();
    }

    public MediaTrack zztn() {
        return (this.zzarS < 0 || this.zzarS >= getCount()) ? null : (MediaTrack) getItem(this.zzarS);
    }
}

package com.google.android.gms.internal;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.google.android.gms.R;
import com.google.android.gms.ads.internal.zzv;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@zzmb
public class zzpl {
    private final Context mContext;
    private int mState;
    private final float zzLP;
    private String zzWZ;
    private float zzXa;
    private float zzXb;
    private float zzXc;
    private String zztq;

    public zzpl(Context context) {
        this.mState = 0;
        this.mContext = context;
        this.zzLP = context.getResources().getDisplayMetrics().density;
    }

    public zzpl(Context context, String str) {
        this(context);
        this.zzWZ = str;
    }

    private int zza(List<String> list, String str, boolean z) {
        if (!z) {
            return -1;
        }
        list.add(str);
        return list.size() - 1;
    }

    static String zzaZ(String str) {
        if (TextUtils.isEmpty(str)) {
            return "No debug information";
        }
        Uri build = new Builder().encodedQuery(str.replaceAll("\\+", "%20")).build();
        StringBuilder stringBuilder = new StringBuilder();
        Map zzg = zzv.zzcJ().zzg(build);
        for (String str2 : zzg.keySet()) {
            stringBuilder.append(str2).append(" = ").append((String) zzg.get(str2)).append("\n\n");
        }
        Object trim = stringBuilder.toString().trim();
        return TextUtils.isEmpty(trim) ? "No debug information" : trim;
    }

    private void zzku() {
        if (this.mContext instanceof Activity) {
            CharSequence string;
            Resources resources = zzv.zzcN().getResources();
            if (resources != null) {
                string = resources.getString(R.string.debug_menu_title);
            } else {
                Object obj = "Select a Debug Mode";
            }
            String string2 = resources != null ? resources.getString(R.string.debug_menu_ad_information) : "Ad Information";
            String string3 = resources != null ? resources.getString(R.string.debug_menu_creative_preview) : "Creative Preview";
            String string4 = resources != null ? resources.getString(R.string.debug_menu_troubleshooting) : "Troubleshooting";
            List arrayList = new ArrayList();
            final int zza = zza(arrayList, string2, true);
            final int zza2 = zza(arrayList, string3, ((Boolean) zzfx.zzEQ.get()).booleanValue());
            final int zza3 = zza(arrayList, string4, ((Boolean) zzfx.zzER.get()).booleanValue());
            new AlertDialog.Builder(this.mContext).setTitle(string).setItems((CharSequence[]) arrayList.toArray(new String[0]), new OnClickListener(this) {
                final /* synthetic */ zzpl zzXg;

                public void onClick(DialogInterface dialogInterface, int i) {
                    if (i == zza) {
                        this.zzXg.zzkv();
                    } else if (i == zza2 && ((Boolean) zzfx.zzEQ.get()).booleanValue()) {
                        this.zzXg.zzkw();
                    } else if (i == zza3 && ((Boolean) zzfx.zzER.get()).booleanValue()) {
                        this.zzXg.zzkx();
                    }
                }
            }).create().show();
            return;
        }
        zzpy.zzbd("Can not create dialog without Activity Context");
    }

    private void zzkv() {
        if (this.mContext instanceof Activity) {
            final Object zzaZ = zzaZ(this.zzWZ);
            AlertDialog.Builder builder = new AlertDialog.Builder(this.mContext);
            builder.setMessage(zzaZ);
            builder.setTitle("Ad Information");
            builder.setPositiveButton("Share", new OnClickListener(this) {
                final /* synthetic */ zzpl zzXg;

                public void onClick(DialogInterface dialogInterface, int i) {
                    zzv.zzcJ().zzb(this.zzXg.mContext, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", zzaZ), "Share via"));
                }
            });
            builder.setNegativeButton("Close", new OnClickListener(this) {
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            builder.create().show();
            return;
        }
        zzpy.zzbd("Can not create dialog without Activity Context");
    }

    private void zzkw() {
        zzpy.zzbc("Debug mode [Creative Preview] selected.");
        zzph.zza(new Runnable(this) {
            final /* synthetic */ zzpl zzXg;

            {
                this.zzXg = r1;
            }

            public void run() {
                zzv.zzcR().zzj(this.zzXg.mContext, this.zzXg.zztq);
            }
        });
    }

    private void zzkx() {
        zzpy.zzbc("Debug mode [Troubleshooting] selected.");
        zzph.zza(new Runnable(this) {
            final /* synthetic */ zzpl zzXg;

            {
                this.zzXg = r1;
            }

            public void run() {
                zzv.zzcR().zzk(this.zzXg.mContext, this.zzXg.zztq);
            }
        });
    }

    public void setAdUnitId(String str) {
        this.zztq = str;
    }

    public void showDialog() {
        if (((Boolean) zzfx.zzER.get()).booleanValue() || ((Boolean) zzfx.zzEQ.get()).booleanValue()) {
            zzku();
        } else {
            zzkv();
        }
    }

    void zza(int i, float f, float f2) {
        if (i == 0) {
            this.mState = 0;
            this.zzXa = f;
            this.zzXb = f2;
            this.zzXc = f2;
        } else if (this.mState == -1) {
        } else {
            if (i == 2) {
                if (f2 > this.zzXb) {
                    this.zzXb = f2;
                } else if (f2 < this.zzXc) {
                    this.zzXc = f2;
                }
                if (this.zzXb - this.zzXc > 30.0f * this.zzLP) {
                    this.mState = -1;
                    return;
                }
                if (this.mState == 0 || this.mState == 2) {
                    if (f - this.zzXa >= 50.0f * this.zzLP) {
                        this.zzXa = f;
                        this.mState++;
                    }
                } else if ((this.mState == 1 || this.mState == 3) && f - this.zzXa <= -50.0f * this.zzLP) {
                    this.zzXa = f;
                    this.mState++;
                }
                if (this.mState == 1 || this.mState == 3) {
                    if (f > this.zzXa) {
                        this.zzXa = f;
                    }
                } else if (this.mState == 2 && f < this.zzXa) {
                    this.zzXa = f;
                }
            } else if (i == 1 && this.mState == 4) {
                showDialog();
            }
        }
    }

    public void zzaY(String str) {
        this.zzWZ = str;
    }

    public void zzg(MotionEvent motionEvent) {
        int historySize = motionEvent.getHistorySize();
        for (int i = 0; i < historySize; i++) {
            zza(motionEvent.getActionMasked(), motionEvent.getHistoricalX(0, i), motionEvent.getHistoricalY(0, i));
        }
        zza(motionEvent.getActionMasked(), motionEvent.getX(), motionEvent.getY());
    }
}

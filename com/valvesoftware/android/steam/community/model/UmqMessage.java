package com.valvesoftware.android.steam.community.model;

public class UmqMessage extends UmqMessageBase {
    public String chatPartnerSteamId;
    public boolean hadSendError;
    public PersonaState personaState;
    public String text;

    public long getUtcTimeStampInMilliseconds() {
        return this.utcTimeStamp * 1000;
    }

    public boolean isEmpty() {
        return this.text == null || this.text.length() == 0;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r6) {
        /*
        r5 = this;
        r1 = 1;
        r2 = 0;
        if (r5 != r6) goto L_0x0006;
    L_0x0004:
        r2 = r1;
    L_0x0005:
        return r2;
    L_0x0006:
        if (r6 == 0) goto L_0x0005;
    L_0x0008:
        r3 = r5.getClass();
        r4 = r6.getClass();
        if (r3 != r4) goto L_0x0005;
    L_0x0012:
        r3 = super.equals(r6);
        if (r3 == 0) goto L_0x0005;
    L_0x0018:
        r0 = r6;
        r0 = (com.valvesoftware.android.steam.community.model.UmqMessage) r0;
        r3 = r5.chatPartnerSteamId;
        if (r3 == 0) goto L_0x003a;
    L_0x001f:
        r3 = r5.chatPartnerSteamId;
        r4 = r0.chatPartnerSteamId;
        r3 = r3.equals(r4);
        if (r3 == 0) goto L_0x0005;
    L_0x0029:
        r3 = r5.text;
        if (r3 == 0) goto L_0x003f;
    L_0x002d:
        r3 = r5.text;
        r4 = r0.text;
        r3 = r3.equals(r4);
        if (r3 != 0) goto L_0x0038;
    L_0x0037:
        r1 = r2;
    L_0x0038:
        r2 = r1;
        goto L_0x0005;
    L_0x003a:
        r3 = r0.chatPartnerSteamId;
        if (r3 == 0) goto L_0x0029;
    L_0x003e:
        goto L_0x0005;
    L_0x003f:
        r3 = r0.text;
        if (r3 != 0) goto L_0x0037;
    L_0x0043:
        goto L_0x0038;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.valvesoftware.android.steam.community.model.UmqMessage.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        int hashCode2 = super.hashCode() * 31;
        if (this.chatPartnerSteamId != null) {
            hashCode = this.chatPartnerSteamId.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode = (hashCode2 + hashCode) * 31;
        if (this.text != null) {
            i = this.text.hashCode();
        }
        return hashCode + i;
    }
}

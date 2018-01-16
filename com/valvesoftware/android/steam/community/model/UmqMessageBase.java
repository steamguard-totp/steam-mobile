package com.valvesoftware.android.steam.community.model;

public class UmqMessageBase {
    public boolean isIncoming;
    public String secureMessageId;
    public UmqMessageType type;
    public long utcTimeStamp;

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || !(o instanceof UmqMessageBase)) {
            return false;
        }
        UmqMessageBase that = (UmqMessageBase) o;
        if (this.utcTimeStamp != that.utcTimeStamp) {
            return false;
        }
        if (this.isIncoming != that.isIncoming) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (((int) this.utcTimeStamp) * 31) + (this.isIncoming ? 1 : 0);
    }
}

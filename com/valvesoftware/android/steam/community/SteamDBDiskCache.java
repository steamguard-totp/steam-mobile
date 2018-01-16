package com.valvesoftware.android.steam.community;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class SteamDBDiskCache {
    protected File m_dir;
    private int m_idxTmpFileName = 0;

    public interface IDataDiskAccess {
        void onRead(FileInputStream fileInputStream, long j) throws IOException;

        void onWrite(OutputStream outputStream) throws IOException;
    }

    private static class DataDiskAccessByteArray implements IDataDiskAccess {
        byte[] m_data;

        private DataDiskAccessByteArray() {
        }

        public void onWrite(OutputStream fw) throws IOException {
            if (this.m_data != null) {
                fw.write(this.m_data);
            }
        }

        public void onRead(FileInputStream fis, long len) throws IOException {
            byte[] readbytes = new byte[((int) len)];
            int numBytesRead = fis.read(readbytes);
            if (((long) numBytesRead) != len) {
                throw new IOException("File read produced " + numBytesRead + " when " + len + " was expected");
            }
            this.m_data = readbytes;
        }
    }

    public static class IndefiniteCache extends SteamDBDiskCache {
        public IndefiniteCache(File rootdir) {
            super(rootdir);
        }

        public synchronized void Delete(String uri) {
            new File(this.m_dir, getFileNameFromUri(uri)).delete();
        }
    }

    protected SteamDBDiskCache(File rootdir) {
        this.m_dir = rootdir;
    }

    protected String getFileNameFromUri(String uri) {
        return uri;
    }

    public void Write(String uri, byte[] data) {
        IDataDiskAccess w = new DataDiskAccessByteArray();
        w.m_data = data;
        Write(uri, w);
    }

    public void Write(String uri, IDataDiskAccess data) {
        try {
            WriteToFile(new File(this.m_dir, getFileNameFromUri(uri)), data);
        } catch (Exception e) {
        }
    }

    public byte[] Read(String uri) {
        DataDiskAccessByteArray r = new DataDiskAccessByteArray();
        if (Read(uri, r)) {
            return r.m_data;
        }
        return null;
    }

    public boolean Read(String uri, IDataDiskAccess data) {
        try {
            return ReadFromFile(new File(this.m_dir, getFileNameFromUri(uri)), data);
        } catch (Exception e) {
            return false;
        }
    }

    private synchronized boolean ReadFromFile(File file, IDataDiskAccess data) throws IOException {
        boolean z;
        if (file.exists()) {
            FileInputStream fis = new FileInputStream(file);
            try {
                long len = file.length();
                if (len > 2147483647L) {
                    throw new IOException("File " + file.getAbsolutePath() + " is too large: " + len);
                }
                if (data != null) {
                    data.onRead(fis, len);
                }
                fis.close();
                z = true;
            } catch (Throwable th) {
                fis.close();
            }
        } else {
            z = false;
        }
        return z;
    }

    private synchronized void WriteToFile(File file, IDataDiskAccess data) throws IOException {
        Throwable th;
        this.m_idxTmpFileName++;
        File tmp = new File(this.m_dir, "tmpfile" + this.m_idxTmpFileName);
        OutputStream fw = null;
        try {
            OutputStream fw2 = new FileOutputStream(tmp);
            if (data != null) {
                try {
                    data.onWrite(fw2);
                } catch (Throwable th2) {
                    th = th2;
                    fw = fw2;
                    if (fw != null) {
                        fw.close();
                    }
                    throw th;
                }
            }
            fw2.flush();
            fw2.close();
            fw = null;
            if (fw != null) {
                fw.close();
            }
            tmp.renameTo(file);
        } catch (Throwable th3) {
            th = th3;
            if (fw != null) {
                fw.close();
            }
            throw th;
        }
    }
}

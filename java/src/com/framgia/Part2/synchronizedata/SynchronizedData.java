package com.framgia.Part2.synchronizedata;

public class SynchronizedData {

    boolean isUpdateReady, isSyncCompleted, isCacheEnabled;

    SynchronizedData(boolean isUpdateReady, boolean isSyncCompleted, boolean isCacheEnabled) {
        this.isUpdateReady = isUpdateReady;
        this.isSyncCompleted = isSyncCompleted;
        this.isCacheEnabled = isCacheEnabled;
    }

    private void updateDatabase(boolean isForceUpdate) {
        String[] dataUpdate = {"Ruby", "PHP", "iOS", "Android"};
        if (isUpdateReady) {
            if (isForceUpdate)
                if (!isSyncCompleted) {
                    updateBackupDb();
                } else {
                    updateMainDb(dataUpdate);
                    updateBackupDb();
                }
            else {
                updateCache();
            }
        }
    }

    private void updateBackupDb() {
        System.out.println("update backup db");
    }

    private void updateMainDb(String[] dataUpdate) {
        if (dataUpdate.length > 0) {
            System.out.println("parse data to object model");
            System.out.println("check validation");
            System.out.println("update main database");
        }
    }

    private void updateCache() {
        if (isCacheEnabled) {
            System.out.println("disable cache");
            System.out.println("update cache");
            System.out.println("output message update cache success");
        } else {
            System.out.println("output message errors");
        }
    }

    public static void main(String[] args) {
        SynchronizedData test = new SynchronizedData(true, false, true);
        test.updateDatabase(true);
    }
}

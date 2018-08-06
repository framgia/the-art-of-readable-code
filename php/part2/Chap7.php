<?php

class SynchronizeXXXData
{
    public $isUpdateReady;
    public $isSynchCompleted;
    public $isCacheEnabled;

    public function __construct($isUpdateReady = false, $isSynchCompleted = false, $isCacheEnabled = false)
    {
        $this->$isUpdateReady = $isUpdateReady;
        $this->$isSynchCompleted = $isSynchCompleted;
        $this->$isCacheEnabled = $isCacheEnabled;
    }

    public function updateDatabase($isForcusUpdate)
    {
        $dataUpdate = [
            'PHP',
            'Ruby',
            'IOS',
            'Java',
        ];

        if ($isUpdateReady) {
            if ($isForcusUpdate) {
                if (! $isSynchCompleted) {
                    $this->updateBackupDB();
                } else {
                    $this->updateMainDB($dataUpdate);
                    $this->updateBackupDB();
                }
            } else {
                $this->updateCache();
            }
        }
    }

    private function updateBackupDB()
    {
        echo "update backup db";
    }

    private updateMainDB($dataUpdate = [])
    {
        if (! empty($dataUpdate)) {
            echo "parse data to object model";
            echo "check validation";
            echo "update main database";
        }
    }

    private function  updateCache()
    {
        if ($isCacheEnabled) {
            echo "disable cache";
            echo "update cache";
            echo "output message update cache success";
        } else {
            echo "output message errors";
        }
    }
}

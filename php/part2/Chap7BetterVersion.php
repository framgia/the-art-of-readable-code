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

        if (! $this->$isUpdateReady) {
            return;
        }

        if (! $isForcusUpdate) {
            return $this->updateCache();
        }

        if ($this->$isSynchCompleted) {
            $this->updateMainDB($dataUpdate);
            return $this->updateBackupDB();
        }

        return $this->updateBackupDB();
    }

    private function updateBackupDB()
    {
        echo 'update backup db';
    }

    private updateMainDB($dataUpdate = [])
    {
        if (! empty($dataUpdate)) {
            echo 'parse data to object model';
            echo 'check validation';
            echo 'update main database';
        }
    }

    private function  updateCache()
    {
        if ($this->$isCacheEnabled) {
            echo 'disable cache';
            echo 'update cache';
            echo 'output message update cache success';
        } else {
            echo 'output message errors';
        }
    }
}

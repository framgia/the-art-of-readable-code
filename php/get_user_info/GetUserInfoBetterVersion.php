<?php

class User
{
    const REQUEST_TIMEOUT = 69;

    public function calculateTotalAge()
    {
        $currentYear = date('Y');
        $users = $this->getUser();
        $age = [];

        foreach($users as $user) {
            if ($yearOfBirth > $currentYear) {
                return false;
            }

            array_push($age, $currentYear - $yearOfBirth);
        }

        return array_reduce($age, 'calculateAge');
    }

    public function calculateAge(int $ageFirst, int $ageLast)
    {
        return $ageFirst + $ageLast;
    }

    private function getUser()
    {
        $curl = curl_init();
        $currentDate = date('%Y/%m/%d');

        curl_setopt_array($curl, [
            CURLOPT_URL => 'http://api.minetools.eu/ping/play.desnia.net/25565' . $currentDate,
            CURLOPT_TIMEOUT => REQUEST_TIMEOUT,
            CURLOPT_CUSTOMREQUEST => 'GET',
        ]);

        $response = curl_exec($curl);

        return json_decode($response, true);
    }
}

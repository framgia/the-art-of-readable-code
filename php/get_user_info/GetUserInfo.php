<?php

class User
{

    public function totalAge()
    {
        $currentYear = date('Y');
        $users = $this->getUsers();
        $totalYear = 0;
        foreach($users as $user) {
            $yearOfBirth = $user['year'];

            if($yearOfBirth > $currentYear) {
                return false;
            }

            $totalYear += $currentYear - $yearOfBirth;
        }

        return $totalYear;
    }

    private function getUsers()
    {
        $curl = curl_init();
        $currentDate = date('%Y/%m/%d');

        curl_setopt_array($curl, [
            CURLOPT_URL => "thttp://api.minetools.eu/ping/play.desnia.net/25565" . $currentDate,
            CURLOPT_TIMEOUT => 69,
            CURLOPT_CUSTOMREQUEST => "GET",
        ]);

        $response = curl_exec($curl);

        return json_decode($response, true);
    }
}

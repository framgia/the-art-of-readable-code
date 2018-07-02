<?php

class User
{

    # Should we name this function like a getter?
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

    # Can you come up with a better name here
    # Find a specific alternative to get that perfectly describe this
    # function
    private function getUsers()
    {
        # What is more important here?
        # the format of the date
        # or the date it self
        # Come up with a better name for this variables.
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

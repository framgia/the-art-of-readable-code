<?php

class Bottle
{
    public function song()
    {
        return $this->verses(99, 0);
    }

    private function verses(int $starting, int $ending)
    {
        $poem = '';
        for ( $i = $starting; $i >= $ending; $i--) {
            $poem .= $this->verse($i);
            $poem .= '</br>';
        }

        return $poem;
    }

    private function verse(int $number)
    {
        switch ($number) {
            case 0:
                return 'No more bottles of beer on the wall, no more bottles of beer. ' .  '</br>'  .
                    'Go to the store and buy some more, 99 bottles of beer on the wall. ' . '</br>';
            case 1:
                return '1 bottle of beer on the wall, 1 bottle of beer. ' . '</br>'  .
                    'Take one down and pass it around, no more bottles of beer on the wall. ' . '</br>';
            case 2: # Can you identify the subproblem here and merge this case with the else case
                return '2 bottles of beer on the wall, 2 bottles of beer. ' .  '</br>'  .
                    'Take one down and pass it around, 1 bottle of beer on the wall. ' . '</br>';
            default:
                return $number . ' bottles of beer on the wall, ' . $number . ' bottles of beer. ' . '</br>' .
                    'Take one down and pass it around, ' . ($number - 1) . ' bottles of beer on the wall. ' . '</br>';
        }
    }
}

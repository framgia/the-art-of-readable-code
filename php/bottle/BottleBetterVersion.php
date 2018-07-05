<?php

class BottleBetterVersion
{
    public function song()
    {
        return $this->verses(99, 0);
    }

    public function verses(int $starting, int $ending) // GOOD: specific name
    {
        $poem = '';
        for ( $i = $starting; $i >= $ending; $i--) {
            $poem .= $this->verse($i);
            $poem .= '</br>';
        }

        return $poem;
    }

    public function verse(int $number) // GOOD: specific name
    {
        // GOOD: show the control flow and cases instead of hiding it in a big expression
        switch ($number) {
            case 0:
                return 'No more bottles of beer on the wall, no more bottles of beer. ' .  '</br>'  .
                    'Go to the store and buy some more, 99 bottles of beer on the wall. ' . '</br>';
            case 1:
                return '1 bottle of beer on the wall, 1 bottle of beer. ' . '</br>'  .
                    'Take one down and pass it around, no more bottles of beer on the wall. ' . '</br>';
            case 2:
                return '2 bottles of beer on the wall, 2 bottles of beer. ' .  '</br>'  .
                    'Take one down and pass it around, 1 bottle of beer on the wall. ' . '</br>';
            default:
                return $number . ' bottles of beer on the wall, ' . $number . ' bottles of beer. ' . '</br>' .
                    'Take one down and pass it around, ' . ($number - 1) . ' bottles of beer on the wall. ' . '</br>';
        }
    }
}

<?php

class BottleWithComment
{
    public function song()
    {
        return $this->verses(99, 0);
    }

    public function verses(int $hi, int $lo) // BAD: hi and lo are not specific enough
    {
        $poem = '';
        for ( $n = $hi; $n >= $lo; $n--) {
            $poem .= $this->verse($n);
            $poem .= '</br>';
        }

        return $poem;
    }

    public function verse(int $n) // BAD: n is too generic
    {
        // BAD: inconsistent style
        // BAD: incomprehensible code
        // BAD: a giant expression
        $verse = '';

        $verse .=  $n == 0 ? 'No more bottles' :  ( $n == 1) ? '1 bottle' :  $n . ' bottles';
        $verse .= ' of beer on the wall, ';
        $verse .=  $n == 0 ? 'No more bottles' :  ( $n == 1) ? '1 bottle' :  $n . ' bottles' . ' of beer.';
        $verse .= '</br>';
        $verse .=  $n == 1 ? 'Go to the store and buy some more, ' : 'Take one down and pass it around, ';
        $verse .=  $n == 1 ? 'No more bottles' :  ( $n == 2) ? '1 bottle' :  $n == 0 ? '99 bottles' : ( $n - 1) . ' bottles';
        $verse .= ' of beer on the wall.';
        $verse .= '</br>';

        return $verse;
    }
}

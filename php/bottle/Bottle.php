<?php

class Bottles
{
    public function song()
    {
        return $this->verses(99, 0);
    }

    public function verses(int $hi, int $lo)
    {
        $poem = '';
        for ( $n = $hi; $n >= $lo; $n--) {
            $poem .=$this->verse($n);
            $poem .= '</br>';
        }

        return $poem;
    }

    public function verse(int $n)
    {
        $verse = '';
        $verse .=  ($n == 0 ? 'No more' : $n) . ' bottle' . ($n == 1 ? '' : 's') . ' of beer on the wall. ';
        $verse .=  ($n == 0 ? 'No more' : $n) . ' bottle' . ($n == 1 ? '' : 's') . ' of beer.';
        $verse .= '</br>';
        $verse .=  $n > 0 ? ('Take ' . ($n > 1 ? 'one' : 'it') . ' down and pass it around, ') : 'Go to the store and buy some more, ';
        $verse .=  ($n - 1 < 0 ? 99 : ($n - 1 == 0 ? ' no more ' : $n - 1)) . ' bottle' . ($n == 1 ? '' : 's') . ' of beer on the wall.';
        $verse .= '</br>';

        return $verse;
    }
}

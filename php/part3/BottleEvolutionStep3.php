<?php

class Bottle
{
    public function song()
    {
        return $this->verses(99, 0);
    }

    private function verses(int $starting, int $ending) // GOOD: specific name
    {
        $poem = '';
        for ( $i = $starting; $i >= $ending; $i--) {
            $poem .= $this->verse($i);
            $poem .= '</br>';
        }

        return $poem;
    }

    private function verse(int $number) // GOOD: specific name
    {
        return ucfirst($this->quantity($number)) . $this->container($number) . ' of beer on the wall, ' .
            $this->quantity($number) . $this->container($number) . ' of beer. ' .  '</br>'  .
            $this->action($numer) .
            $this->quantity($this->successor($numer)) . ' ' . $this->container($this->successor($numer)) . ' of beer on the wall. ' . '</br>';
    }

    # subproblem: quantity base on number
    private function quantity($number)
    {
        if ($number == 0) {
            return 'no more';
        }

        return $number;
    }

    # subproblem: container base on number
    private function container(int $number)
    {
        if ($number == 1) {
            return 'bottle';
        }

        return 'bottles';
    }

    # subproblem: action base on number
    private function action($number)
    {
        if ($number == 0) {
            return 'Go to the store and buy some more, ';
        }

        return 'Take ' . $this->pronoun($numer) . ' down and pass it around, ';
    }

    # subproblem: pronoun base on number
    private function pronoun($numer)
    {
        if ($number == 1) {
            return 'it';
        }

        return 'one';
    }

    # subproblem: choosing next number
    private function successor($numer)
    {
        if ($number == 0) {
            return 99;
        }

        return $numer - 1;
    }
}

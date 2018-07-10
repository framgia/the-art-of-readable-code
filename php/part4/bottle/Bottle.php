<?php

class Bottle
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
        return ucfirst($this->quantity($number)) . ' ' . $this->container($number) . ' of beer on the wall, ' .
            $this->quantity($number) . ' ' . $this->container($number) . ' of beer. ' .  '</br>'  .
            $this->action($number) .
            $this->quantity($this->successor($number)) . ' ' . $this->container($this->successor($number)) . ' of beer on the wall. ' . '</br>';
    }

    # subproblem: quantity base on number
    public function quantity($number)
    {
        if ($number == 0) {
            return 'no more';
        }

        return $number;
    }

    # subproblem: container base on number
    public function container(int $number)
    {
        if ($number == 1) {
            return 'bottle';
        }

        return 'bottles';
    }

    # subproblem: action base on number
    public function action($number)
    {
        if ($number == 0) {
            return 'Go to the store and buy some more, ';
        }

        return 'Take ' . $this->pronoun($number) . ' down and pass it around, ';
    }

    # subproblem: pronoun base on number
    public function pronoun($number)
    {
        if ($number == 1) {
            return 'it';
        }

        return 'one';
    }

    # subproblem: choosing next number
    public function successor($number)
    {
        if ($number == 0) {
            return 99;
        }

        return $number - 1;
    }
}

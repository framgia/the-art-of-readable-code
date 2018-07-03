<?php

# coding: utf-8
# At the end of the example in part 1
# we are left with this version of the bottle class
# Use methods from part 3 of the book to improve this class.
# Especially chapter 10 and 11

# For this example you should:
# - Aggressively identify and extract unrelated subproblems:
#    + Ask yourself, “What is the high-level goal of this code?”
#    + Ask yourself, “Is it working directly to that goal?
#      Or is it solving an unrelated subproblem needed to meet it?”
#    + Extract that part into a function
# - Make code do one task at a time:
#    + List out all the “tasks” your code is doing.
#    + Try to separate those tasks as much as you can into different functions or at least different
#      sections of code.

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

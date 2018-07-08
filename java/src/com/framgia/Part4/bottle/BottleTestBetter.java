package com.framgia.Part4.bottle;

import com.framgia.Part3.bottle.Bottle;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class BottleTestBetter {


    // GOOD: a test for each cases
    // GOOD: Descriptive function name
    // GOOD: easy to add another case
    @Test
    public void test_the_first_verse() {
        String expected = "99 bottles of beer on the wall, " +
                "99 bottles of beer.\n" +
                "Take one down and pass it around, " +
                "98 bottles of beer on the wall.";
        // GOOD: better failure message
        assertEquals(expected, Bottle.getVerse(99)); // a diff of expected and actual on failure
    }

    @Test
    public void test_another_verse() {
        String expected = "3 bottles of beer on the wall, " +
                "3 bottles of beer.\n" +
                "Take one down and pass it around, " +
                "2 bottles of beer on the wall.";
        assertEquals(expected, Bottle.getVerse(3));
    }

    @Test
    public void test_verse_2() {
        String expected = "2 bottles of beer on the wall, " +
                "2 bottles of beer.\n" +
                "Take one down and pass it around, " +
                "1 bottle of beer on the wall.\n";
        assertEquals(expected, Bottle.getVerse(2));
    }

    @Test
    public void test_verse_1() {
        String expected = "1 bottle of beer on the wall, " +
                "1 bottle of beer.\n" +
                "Take it down and pass it around, " +
                "no more bottles of beer on the wall.\n";
        assertEquals(expected, Bottle.getVerse(1));
    }

    @Test
    public void test_verse_0() {
        String expected = "No more bottles of beer on the wall, " +
                "no more bottles of beer.\n" +
                "Go to the store and buy some more, " +
                "99 bottles of beer on the wall.\n";
        assertEquals(expected, Bottle.getVerse(0));
    }

    @Test
    public void test_a_couple_verses() {
        String expected = "99 bottles of beer on the wall, " +
                "99 bottles of beer.\n" +
                "Take one down and pass it around, " +
                "98 bottles of beer on the wall.\n" +
                "\n" +
                "98 bottles of beer on the wall, " +
                "98 bottles of beer.\n" +
                "Take one down and pass it around, " +
                "97 bottles of beer on the wall.\n";
        assertEquals(expected, Bottle.getVerses(99, 98));
    }

    @Test
    public void test_a_few_verses() {
        String expected = "2 bottles of beer on the wall, " +
                "2 bottles of beer.\n" +
                "Take one down and pass it around, " +
                "1 bottle of beer on the wall.\n" +
                "\n" +
                "1 bottle of beer on the wall, " +
                "1 bottle of beer.\n" +
                "Take it down and pass it around, " +
                "no more bottles of beer on the wall.\n" +
                "\n" +
                "No more bottles of beer on the wall, " +
                "no more bottles of beer.\n" +
                "Go to the store and buy some more, " +
                "99 bottles of beer on the wall.\n";
        assertEquals(expected, Bottle.getVerses(2, 0));
    }

}

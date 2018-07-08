package com.framgia.Part4.bottle;

import com.framgia.Part3.bottle.Bottle;
import org.junit.Test;

import static org.junit.Assert.*;

public class BottleTest {

    @Test
    public void test_1() {
        String expected = "99 bottles of beer on the wall, " +
                "99 bottles of beer.\n" +
                "Take one down and pass it around, " +
                "98 bottles of beer on the wall.\n";
        assertEquals(expected, Bottle.getVerse(99));

        expected = "3 bottles of beer on the wall, " +
                "3 bottles of beer.\n" +
                "Take one down and pass it around, " +
                "2 bottles of beer on the wall.\n";
        assertEquals(expected, Bottle.getVerse(3));

        expected = "2 bottles of beer on the wall, " +
                "2 bottles of beer.\n" +
                "Take one down and pass it around, " +
                "1 bottle of beer on the wall.\n";
        assertEquals(expected, Bottle.getVerse(2));

        expected = "1 bottle of beer on the wall, " +
                "1 bottle of beer.\n" +
                "Take it down and pass it around, " +
                "no more bottles of beer on the wall.\n";
        assertEquals(expected, Bottle.getVerse(1));

        expected = "No more bottles of beer on the wall, " +
                "no more bottles of beer.\n" +
                "Go to the store and buy some more, " +
                "99 bottles of beer on the wall.\n";
        assertEquals(expected, Bottle.getVerse(0));

        expected = "99 bottles of beer on the wall, " +
                "99 bottles of beer.\n" +
                "Take one down and pass it around, " +
                "98 bottles of beer on the wall.\n" +
                "\n" +
                "98 bottles of beer on the wall, " +
                "98 bottles of beer.\n" +
                "Take one down and pass it around, " +
                "97 bottles of beer on the wall.\n";
        assertEquals(expected, Bottle.getVerses(99, 98));

        expected = "2 bottles of beer on the wall, " +
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

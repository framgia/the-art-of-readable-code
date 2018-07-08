package com.framgia.Part1.bottle;

public class BottleBetterVersion {

    private static String song() {
        return getVerses(99, 0);
    }

    private static String getVerses(int start, int end) { // GOOD: specific name
        StringBuilder poem = new StringBuilder();
        for (int i = start; i >= end; i--) {
            poem.append(getVerse(i));
            poem.append("\n");
        }
        return poem.toString();
    }

    private static String getVerse(int number) {  // GOOD: specific name
        // GOOD: show the control flow and cases instead of hiding it in a big expression
        switch (number) {
            case 0:
                return "No more bottles of beer on the wall, no more bottles of beer." + "\n" +
                        "Go to the store and buy some more, 99 bottles of beer on the wall.";
            case 1:
                return "1 bottle of beer on the wall, 1 bottle of beer." + "\n" +
                        "Take one down and pass it around, no more bottles of beer on the wall.";
            case 2:
                return "2 bottles of beer on the wall, 2 bottles of beer." + "\n" +
                        "Take one down and pass it around, 1 bottle of beer on the wall.";
            default:
                return number + " bottles of beer on the wall, " + number + " bottles of beer." + "\n" +
                        "Take one down and pass it around, " + (number - 1) + " bottles of beer on the wall.";
        }
    }

    public static void main(String[] args) {
        System.out.println(song());
    }
}

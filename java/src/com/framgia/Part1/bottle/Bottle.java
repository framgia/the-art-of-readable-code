package com.framgia.Part1.bottle;

public class Bottle {

    private static String song() {
        return getVerses(99, 0);
    }

    private static String getVerses(int hi, int lo) {
        StringBuilder poem = new StringBuilder();
        for (int n = hi; n >= lo; n--) {
            poem.append(getVerse(n));
            poem.append("\n");
        }
        return poem.toString();
    }

    private static String getVerse(int n) {
        String verse = "";
        verse += n == 0 ? "No more bottles" : (n == 1) ? "1 bottle" : n + " bottles";
        verse += " of beer on the wall, ";
        verse += n == 0 ? "No more bottles" : (n == 1) ? "1 bottle" : n + " bottles" + " of beer.";
        verse += "\n";
        verse += n == 1 ? "Go to the store and buy some more, " : "Take one down and pass it around, ";
        verse += n == 1 ? "No more bottles" : (n == 2) ? "1 bottle" : n == 0 ? "99 bottles" : (n - 1) + "bottles";
        verse += " of beer on the wall.";
        return verse;
    }

    public static void main(String[] args) {
        System.out.println(song());
    }
}

package com.framgia.Part3.bottle;

public class BottleStep3 {

    private static String song() {
        return getVerses(99, 0);
    }

    private static String getVerses(int start, int end) {
        StringBuilder poem = new StringBuilder();
        for (int i = start; i >= end; i--) {
            poem.append(getVerse(i));
            poem.append("\n");
        }
        return poem.toString();
    }

    private static String getVerse(int number) {
        return capitalizeFirstLetter(getQuantity(number)) + " " + getContainer(number) + " of beer on the wall, " +
                getQuantity(number) + " " + getContainer(number) + " of beer.\n" +
                getAction(number) + ", " +
                getQuantity(getSuccessor(number)) + " " + getContainer(getSuccessor(number)) + " of beer on the wall.\n";
    }

    private static String getQuantity(int number) {
        return number == 0 ? "no more" : "" + number;
    }

    /**
     * Sub problem: container base on number
     */
    private static String getContainer(int number) {
        return number == 1 ? "bottle" : "bottles";
    }

    /**
     * Sub problem: action base on number
     */
    private static String getAction(int number) {
        return number == 0 ?
                "Go to the store and buy some more" :
                "Take " + getPronoun(number) + " down and pass it around";
    }

    /**
     * Sub problem: pronoun base on number
     */
    private static String getPronoun(int number) {
        return number == 1 ? "it" : "one";
    }

    /**
     * Sub problem: choosing next number
     */
    private static int getSuccessor(int number) {
        return number == 0 ? 99 : number - 1;
    }

    public static String capitalizeFirstLetter(String original) {
        return original.substring(0, 1).toUpperCase() + original.substring(1);
    }

    public static void main(String[] args) {
        System.out.println(song());
    }
}
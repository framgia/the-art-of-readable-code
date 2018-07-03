package Part3.bottle;

public class BottleStep2 {

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
        // Now identify all the sub problems and merge all cases
        // into one, remember that all sub problem should also only do one thing at a time
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
                        "Take one down and pass it around, " + getContainer(number - 1) + " of beer on the wall.";
        }
    }

    /**
     * The sub problem choosing the correct container name  base on the number of bottle
     */
    private static String getContainer(int number) {
        return number == 1 ? "bottle" : "bottles";
    }

    public static void main(String[] args) {
        System.out.println(song());
    }
}
package Part1.bottle;

public class BottleWithComment {

    private static String song() {
        return compose(99, 0);
    }

    private static String compose(int hi, int lo) { // BAD: hi and lo are not specific enough
        StringBuilder poem = new StringBuilder();
        for (int n = hi; n >= lo; n--) {
            poem.append(compose(n));
            poem.append("\n");
        }
        return poem.toString();
    }

    private static String compose(int n) { // BAD: n is too generic
        // BAD: inconsistent style
        // BAD: incomprehensible code
        // BAD: a giant expression
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

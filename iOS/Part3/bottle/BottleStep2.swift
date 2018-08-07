class BottleStep2 {
    
    func song() -> String {
        return getVerses(99, 0)
    }
    
    private func getVerses(_ start: Int, _ end: Int) -> String {
        var poem: [String] = []
        var n = start
        while n >= end {
            poem.append(getVerse(n))
            poem.append("\n")
            n -= 1
        }
        
        return poem.joined()
    }
    
    private func getVerse(_ number: Int) -> String {
    // Now identify all the sub problems and merge all cases
    // into one, remember that all sub problem should also only do one thing at a time
        switch (number) {
        case 0:
            return """
            No more bottles of beer on the wall, no more bottles of beer.
            Go to the store and buy some more, 99 bottles of beer on the wall.
            """
            
        case 1:
            return """
            1 bottle of beer on the wall, 1 bottle of beer.
            Take one down and pass it around, no more bottles of beer on the wall.
            """
            
        case 2: // Can you identify the sub problem here and merge this case with the else case
            return """
            2 bottles of beer on the wall, 2 bottles of beer.
            Take one down and pass it around, 1 bottle of beer on the wall.
            """
            
        default:
            return """
            \(number) bottles of beer on the wall, \(number) bottles of beer.
            Take one down and pass it around, \(getContainer(number - 1)) of beer on the wall.
            """
        }
    }
    
    /**
     * The sub problem choosing the correct container name  base on the number of bottle
     */
    private func getContainer(_ number: Int) -> String {
        return number == 1 ? "bottle" : "bottles"
    }
}

class BottleBetterVersion {
    
    private func song() -> String {
        return getVerses(99, 0)
    }
    
    private func getVerses(_ start: Int, _ end: Int) -> String { // GOOD: specific name
        var poem: [String] = []
        var n = start
        while n >= end {
            poem.append(getVerse(n))
            poem.append("\n")
            n -= 1
        }
        
        return poem.joined()
    }
    
    private func getVerse(_ number: Int) -> String {  // GOOD: specific name
        // GOOD: show the control flow and cases instead of hiding it in a big expression
        switch number {
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
            
        case 2:
            return """
            2 bottles of beer on the wall, 2 bottles of beer.
            Take one down and pass it around, 1 bottle of beer on the wall.
            """
            
        default:
            return """
            \(number) bottles of beer on the wall, \(number) bottles of beer.
            Take one down and pass it around, \(number - 1) bottles of beer on the wall.
            """
        }
    }
}

let bot = Bottle()
print(bot.song())
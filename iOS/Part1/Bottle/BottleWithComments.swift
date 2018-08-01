class BottleWithComment {
    
    func song() -> String {
        return getVerses(99, 0)
    }
    
    private func getVerses(_ hi: Int, _ lo: Int) -> String { // BAD: hi and lo are not specific enough
        var poem: [String] = []
        var n = hi
        while n >= lo {
            poem.append(getVerse(n))
            poem.append("\n")
            n -= 1
        }
    
        return poem.joined()
    }
    
    private func getVerse(_ n: Int) -> String { // BAD: n is too generic
        // BAD: inconsistent style
        // BAD: incomprehensible code
        // BAD: a giant expression
        var verse = ""
        verse += n == 0 ? "No more bottles" : (n == 1) ? "1 bottle" : "\(n) bottles"
        verse += " of beer on the wall, "
        verse += n == 0 ? "No more bottles" : (n == 1) ? "1 bottle" : "\(n) bottles of beer."
        verse += "\n"
        verse += n == 1 ? "Go to the store and buy some more, " : "Take one down and pass it around, "
        verse += n == 1 ? "No more bottles" : (n == 2) ? "1 bottle" : n == 0 ? "99 bottles" : "\(n - 1) bottles"
        verse += " of beer on the wall."
        
        return verse
    }
}

let bot = BottleWithComment()
print(bot.song())
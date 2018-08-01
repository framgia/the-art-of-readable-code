import Foundation

class BottleStep3 {
    
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
    return capitalizeFirstLetter("\(getQuantity(number)) \(getContainer(number)) of beer on the wall, \(getQuantity(number)) \(getContainer(number)) of beer.\n\(getAction(number)), \(getQuantity(getSuccessor(number))) \(getContainer(getSuccessor(number))) of beer on the wall.\n")
    }
    
    private func getQuantity(_ number: Int) -> String {
    return number == 0 ? "no more" : "\(number)"
    }
    
    /**
     * Sub problem: container base on number
     */
    private func getContainer(_ number: Int) -> String {
    return number == 1 ? "bottle" : "bottles"
    }
    
    /**
     * Sub problem: action base on number
     */
    private func getAction(_ number: Int) -> String {
        return number == 0 ?
            "Go to the store and buy some more" :
            "Take \(getPronoun(number)) down and pass it around"
    }
    
    /**
     * Sub problem: pronoun base on number
     */
    private func getPronoun(_ number: Int) -> String {
        return number == 1 ? "it" : "one"
    }
    
    /**
     * Sub problem: choosing next number
     */
    private func getSuccessor(_ number: Int) -> Int {
        return number == 0 ? 99 : number - 1
    }
    
    func capitalizeFirstLetter(_ original: String) -> String {
        return original.capitalized
    }
}
import Foundation

class GetUserInfoWithComment {
    
    class RestClient {
        /**
         * DEMO METHOD
         * This method make a request to server then receive a list of users
         */
        static func execute(method: String, url: String, timeout: Int) -> [User] {
            return []
        }
    }
    
    // Can you come up with a better name here
    // Find a specific alternative to get that perfectly describe this function
    private func getUsers() -> [User] {
    // What is more important here?
    // the format of the date
    // or the date it self
    // Come up with a better name for this variables.
    let yyyymmdstr = Date().timeIntervalSince1970
        return RestClient.execute(method: "GET", url: "http://example.com/users&starts_date=\(yyyymmdstr)", timeout: 180) // what's is 180?
    }
    
    private func totalAge() -> Int {
        return totalAge(users: getUsers())
    }
    
    // Should we name this function like a getter?
    private func totalAge(users: [User]) -> Int {
        var total = 0
        for u in users { // Find a better name for this variable
            let userBirthDay = getYearInTimeStr(time: u.getBirthday())
            let currentYear = Calendar.current.component(Calendar.Component.year, from: Date())
            total += currentYear - userBirthDay
        }
        return total
    }
    
    /**
     * DEMO METHOD
     * This method will return year from time string
     */
    private func getYearInTimeStr(time: String) -> Int {
        return 0
    }
}

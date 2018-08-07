import Foundation

class GetUserInfoBetter {
    
    let REQUEST_TIMEOUT = 69
    
    class RestClient {
        /**
         * DEMO METHOD
         * This method make a request to server then receive a list of users
         */
        static func execute(method: String, url: String, timeout: Int) -> [User] {
            return []
        }
    }
    
    // get user from the internet
    private func fetchUsers() -> [User] {
    let currentTime = Date().timeIntervalSince1970
        return RestClient.execute(method: "GET", url: "http://example.com/users&starts_date=\(currentTime)", timeout: REQUEST_TIMEOUT)
    }
    
    private func calculateTotalAge() -> Int {
        return calculateTotalAge(users: fetchUsers())
    }
    
    public func calculateTotalAge(users: [User]) -> Int {
        var total = 0
        for user in users {
            total += calculateAge(user: user)
        }
        return total
    }
    
    private func calculateAge(user: User) -> Int {
        let userBirthDay = getYearInTimeStr(time: user.getBirthday())
        let currentYear = Calendar.current.component(Calendar.Component.year, from: Date())
        return currentYear - userBirthDay
    }
    
    /**
     * DEMO METHOD
     * This method will return year from time string
     */
    private func getYearInTimeStr(time: String) -> Int {
        return 0
    }
}

import Foundation

class GetUserInfo {
    
    class RestClient {
        /**
         * DEMO METHOD
         * This method make a request to server then receive a list of users
         */
        static func execute(method: String, url: String, timeout: Int) -> [User] {
            return []
        }
    }
    
    private static func getUsers() -> [User] {
        let yyyymmdstr = Date().timeIntervalSince1970
        return RestClient.execute(method: "GET", url: "http://example.com/users&starts_date=\(yyyymmdstr)", timeout: 180)
    }
    
    func totalAge() -> Int {
        return totalAge(users: GetUserInfo.getUsers())
    }
    
    private func totalAge(users: [User]) -> Int {
        var total = 0
        for u in users {
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
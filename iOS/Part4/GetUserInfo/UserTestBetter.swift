import XCTest

class UserTestBetter {
    
    private let getUserInfo = GetUserInfoBetter()
    
    func generate_data_users(_ birthdays: [String]) -> [User] {
        var users: [User] = []
        for birthday in birthdays {
            users.append(birthday)
        }
        return users
    }
    
    private func calculate_total(_ birthdays: [String]) -> Int {
        var users = generate_data_users(birthdays)
        return userInfo.calculateTotalAge(users: users)
    }
    
    func test_calculate_total_basic() {
        let birthdays = ["20-11-1991", "20-11-1992", "20-11-1993", "20-11-1994", "20-11-1995"]
        XCTAssertEqual(125, calculate_total(birthdays))
    }
    
    func test_calculate_total_backslash_char() {
        let birthdays = ["20-11-1991", "20/11/1992", "20-11-1993", "20-11-1994", "20-11-1995"]
        XCTAssertEqual(125, calculate_total(birthdays))
    }
    
    func test_calculate_total_nil_value() {
        let birthdays = ["20-11-1991", "", "20-11-1993", "20-11-1994", "20-11-1995"]
        XCTAssertEqual(109, calculate_total(birthdays))
    }
}
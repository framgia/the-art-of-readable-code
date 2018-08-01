import XCTest

class UserTest: XCTestCase {
    
    private let getUserInfo = GetUserInfoBetter()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // The name test1() is meaningless
    func test1() {
        //The test is very long and full of unimportant details.
        //Adding another test isn’t easy.
        //The test tries to test everything at once.

        var users: [User] = []
        // The test inputs aren’t simple.
        // The test inputs don’t thoroughly exercise the code.

        users.append(User(name: "Cong tan ton nu ta thi mong hang", birthday: "20-11-1991"))
        users.append(User(name: "Nguyen Van A2", birthday: "20-11-1992"))
        users.append(User(name: "Cong tan ton nu ta thi mong hang", birthday: "20-11-1991"))
        users.append(User(name: "Nguyen Van A2", birthday: "20-11-1992"))
        users.append(User(name: "Nguyen Van A3", birthday: "20-11-1993"))
        users.append(User(name: "Nguyen Van A4", birthday: "20-11-1994"))
        users.append(User(name: "Nguyen Van A5", birthday: "20-11-1995"))
        let expected = 125
        XCTAssertEqual(expected, getUserInfo.calculateTotalAge(users: users))
    
        users.removeAll()
        users.append(User(name: "Cong tan ton nu ta thi mong hang", birthday: "20-11-1991"))
        users.append(User(name: "Nguyen Van A2", birthday: "20/11/1992"))
        users.append(User(name: "Nguyen Van A3", birthday: "20-11-1993"))
        users.append(User(name: "Nguyen Van A4", birthday: "20-11-1994"))
        users.append(User(name: "Nguyen Van A5", birthday: "20-11-1995"))
        expected = 125
        XCTAssertEqual(expected, getUserInfo.calculateTotalAge(users: users))
    
        users.removeAll()
        users.append(User(name: "Cong tan ton nu ta thi mong hang", birthday: "20-11-1991"))
        users.append(User(name: "Nguyen Van A2", birthday: ""))
        users.append(User(name: "Nguyen Van A3", birthday: "20-11-1993"))
        users.append(User(name: "Nguyen Van A4", birthday: "20-11-1994"))
        users.append(User(name: "Nguyen Van A5", birthday: "20-11-1995"))
        expected = 109
        XCTAssertEqual(expected, getUserInfo.calculateTotalAge(users: users))
    
        users.removeAll()
        users.append(User(name: "Cong tan ton nu ta thi mong hang", birthday: "20-11-1991"))
        users.append(User(name: "Nguyen Van A2", birthday: "20-11-1992"))
        users.append(User(name: "Nguyen Van A4", birthday: "20-11-1994"))
        users.append(User(name: "Nguyen Van A5", birthday: "20-11-1995"))
        expected = 100
        XCTAssertEqual(expected, getUserInfo.calculateTotalAge(users: users))
    }
}

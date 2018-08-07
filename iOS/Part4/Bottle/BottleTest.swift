import XCTest

class BottleTest: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_1() {
        var expected = "99 bottles of beer on the wall, " +
            "99 bottles of beer.\n" +
            "Take one down and pass it around, " +
        "98 bottles of beer on the wall.\n"
        XCTAssertEqual(expected, Bottle().getVerse(99))
        
        expected = "3 bottles of beer on the wall, " +
            "3 bottles of beer.\n" +
            "Take one down and pass it around, " +
        "2 bottles of beer on the wall.\n"
        XCTAssertEqual(expected, Bottle.getVerse(3))
        
        expected = "2 bottles of beer on the wall, " +
            "2 bottles of beer.\n" +
            "Take one down and pass it around, " +
        "1 bottle of beer on the wall.\n"
        XCTAssertEqual(expected, Bottle.getVerse(2))
        
        expected = "1 bottle of beer on the wall, " +
            "1 bottle of beer.\n" +
            "Take it down and pass it around, " +
        "no more bottles of beer on the wall.\n"
        XCTAssertEqual(expected, Bottle.getVerse(1))
        
        expected = "No more bottles of beer on the wall, " +
            "no more bottles of beer.\n" +
            "Go to the store and buy some more, " +
        "99 bottles of beer on the wall.\n"
        XCTAssertEqual(expected, Bottle.getVerse(0))
        
        expected = "99 bottles of beer on the wall, " +
            "99 bottles of beer.\n" +
            "Take one down and pass it around, " +
            "98 bottles of beer on the wall.\n" +
            "\n" +
            "98 bottles of beer on the wall, " +
            "98 bottles of beer.\n" +
            "Take one down and pass it around, " +
        "97 bottles of beer on the wall.\n"
        XCTAssertEqual(expected, Bottle.getVerses(99, 98))
        
        expected = "2 bottles of beer on the wall, " +
            "2 bottles of beer.\n" +
            "Take one down and pass it around, " +
            "1 bottle of beer on the wall.\n" +
            "\n" +
            "1 bottle of beer on the wall, " +
            "1 bottle of beer.\n" +
            "Take it down and pass it around, " +
            "no more bottles of beer on the wall.\n" +
            "\n" +
            "No more bottles of beer on the wall, " +
            "no more bottles of beer.\n" +
            "Go to the store and buy some more, " +
        "99 bottles of beer on the wall.\n"
        XCTAssertEqual(expected, Bottle.getVerses(2, 0))

    }
    
}
import XCTest

class BottleTestWithComment: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_1() {
        // BAD: meaning less name
        // BAD: try to test everything at once
        // BAD: Hard to add another test case
        
        var expected = "99 bottles of beer on the wall, " +
        "99 bottles of beer.\n" +
        "Take one down and pass it around, " +
        "98 bottles of beer on the wall.\n"
        // BAD: this assert produce meaningless failure message
        XCTAssertEqual(expected, Bottle.getVerse(99)) // Expected false to be truthy.
        
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
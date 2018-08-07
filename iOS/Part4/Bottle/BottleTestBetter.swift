class BottleTestBetter: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // GOOD: a test for each cases
    // GOOD: Descriptive function name
    // GOOD: easy to add another case
    func test_the_first_verse() {
        let expected = "99 bottles of beer on the wall, " +
        "99 bottles of beer.\n" +
        "Take one down and pass it around, " +
        "98 bottles of beer on the wall."
        // GOOD: better failure message
        XCTAssertEqual(expected, Bottle.getVerse(99)) // a diff of expected and actual on failure
    }
    
    func test_another_verse() {
        let expected = "3 bottles of beer on the wall, " +
        "3 bottles of beer.\n" +
        "Take one down and pass it around, " +
        "2 bottles of beer on the wall."
        XCTAssertEqual(expected, Bottle.getVerse(3))
    }
    
    func test_verse_2() {
        let expected = "2 bottles of beer on the wall, " +
        "2 bottles of beer.\n" +
        "Take one down and pass it around, " +
        "1 bottle of beer on the wall.\n"
        XCTAssertEqual(expected, Bottle.getVerse(2))
    }
    
    func test_verse_1() {
        let expected = "1 bottle of beer on the wall, " +
        "1 bottle of beer.\n" +
        "Take it down and pass it around, " +
        "no more bottles of beer on the wall.\n"
        XCTAssertEqual(expected, Bottle.getVerse(1))
    }
    
    func test_verse_0() {
        let expected = "No more bottles of beer on the wall, " +
        "no more bottles of beer.\n" +
        "Go to the store and buy some more, " +
        "99 bottles of beer on the wall.\n"
        XCTAssertEqual(expected, Bottle.getVerse(0))
    }
    
    func test_a_couple_verses() {
        let expected = "99 bottles of beer on the wall, " +
        "99 bottles of beer.\n" +
        "Take one down and pass it around, " +
        "98 bottles of beer on the wall.\n" +
        "\n" +
        "98 bottles of beer on the wall, " +
        "98 bottles of beer.\n" +
        "Take one down and pass it around, " +
        "97 bottles of beer on the wall.\n"
        XCTAssertEqual(expected, Bottle.getVerses(99, 98))
    }
    
    func test_a_few_verses() {
        let expected = "2 bottles of beer on the wall, " +
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
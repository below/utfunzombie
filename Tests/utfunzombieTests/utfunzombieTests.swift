import XCTest
@testable import utfunzombie

final class UtfUnzombieTests: XCTestCase {
    
    func testUTFUnZombie() {
        var datafile = URL(fileURLWithPath: #file).deletingLastPathComponent()
        datafile.appendPathComponent("Testdata.txt")
        let string = convert(path: datafile)
        XCTAssertNotNil(string)
        XCTAssertEqual(string, "hinzufügen\n")
    }

    static var allTests = [
        ("testExample", testUTFUnZombie),
    ]
}

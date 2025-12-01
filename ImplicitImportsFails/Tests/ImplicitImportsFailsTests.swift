import Foundation   
import Logging
import XCTest

final class ImplicitImportsFailsTests: XCTestCase {
    func test_twoPlusTwo_isFour() {
        XCTAssertEqual(2+2, 4)
        var logger1 = Logger(label: "first logger")
        print(logger1)
    }
}

import XCTest
@testable import MockService

final class MockServiceTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(MockService().text, "Hello, World!")
    }
}

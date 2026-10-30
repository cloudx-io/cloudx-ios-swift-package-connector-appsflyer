import CloudXAppsFlyerConnector
import CloudXAppsFlyerConnectorPackage
import XCTest

final class CloudXAppsFlyerConnectorSwiftTests: XCTestCase {
    func testFrameworkIsLinked() {
        XCTAssertEqual(CLXAppsFlyerConnectorVersion, "6.15.0.0")
        XCTAssertNotNil(NSClassFromString("CLXAppsFlyerConnector"))
    }
}

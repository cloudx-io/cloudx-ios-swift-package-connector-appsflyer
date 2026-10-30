@import CloudXAppsFlyerConnector;
@import CloudXAppsFlyerConnectorPackage;
@import XCTest;

@interface CloudXAppsFlyerConnectorObjCTests : XCTestCase
@end

@implementation CloudXAppsFlyerConnectorObjCTests

- (void)testFrameworkIsLinked {
    XCTAssertEqualObjects(CLXAppsFlyerConnectorVersion, @"6.15.0.0");
    XCTAssertNotNil(NSClassFromString(@"CLXAppsFlyerConnector"));
}

@end

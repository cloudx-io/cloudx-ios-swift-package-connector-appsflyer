// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CloudXAppsFlyerConnector",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "CloudXAppsFlyerConnector",
            targets: ["CloudXAppsFlyerConnectorPackage"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-core.git",
            from: "3.9.1"
        ),
        .package(
            url: "https://github.com/AppsFlyerSDK/AppsFlyerFramework.git",
            from: "6.15.0"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXAppsFlyerConnector",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-connector-appsflyer/releases/download/binary/6150000.0.0/CloudXAppsFlyerConnector.xcframework.zip",
            checksum: "c34134d18bebc3fe8862bb2de07e5319feba8b6ec69da8a22f9a5db3b04e93f6"
        ),
        .target(
            name: "CloudXAppsFlyerConnectorPackage",
            dependencies: [
                "CloudXAppsFlyerConnector",
                .product(name: "CloudXCore", package: "cloudx-ios-swift-package-core"),
                .product(name: "AppsFlyerLib", package: "appsflyerframework"),
            ]
        ),
        .testTarget(
            name: "CloudXAppsFlyerConnectorSwiftTests",
            dependencies: ["CloudXAppsFlyerConnectorPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
        .target(
            name: "SwiftRuntimeLink",
            path: "Tests/SwiftRuntimeLink"
        ),
        .testTarget(
            name: "CloudXAppsFlyerConnectorObjCTests",
            dependencies: ["CloudXAppsFlyerConnectorPackage", "SwiftRuntimeLink"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
    ]
)

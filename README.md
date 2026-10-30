# CloudX AppsFlyer ad-revenue connector Swift package

This repository distributes the AppsFlyer ad-revenue connector for the CloudX iOS SDK.

## Requirements

- iOS 13 or later
- Xcode 16 or later
- CloudX Core 3.9.1 or later

## Installation

Add this package in Xcode:

```text
https://github.com/cloudx-io/cloudx-ios-swift-package-connector-appsflyer.git
```

Select an exact package version from the compatibility table. Add the
`CloudXAppsFlyerConnector` product to the app target.

Add `-ObjC` to the app target's **Other Linker Flags**. The package uses this
flag to retain the CloudX registration code.

AppsFlyer SDK contains Swift. An Objective-C-only app target needs at least one
Swift source file so Xcode links the Swift runtime.

| Package version | CloudX ad-revenue connector | AppsFlyer SDK |
| --- | --- | --- |
| `6150000.0.0` | `6.15.0.0` | `6.15.0` or later |

The package installs CloudX Core and AppsFlyer SDK `6.15.0` or later. Initialize AppsFlyer SDK as its own documentation describes. Import `CloudXCore` in the application. The ad-revenue connector registers when the application loads.

## Versioning

CloudX ad-revenue connector versions have four components. Swift package versions use three. The package tag joins the ad-revenue connector components into the major number. For example, ad-revenue connector `6.15.0.0` uses package version `6150000.0.0`.

## License

The CloudX ad-revenue connector uses the Business Source License 1.1. See [LICENSE](LICENSE).

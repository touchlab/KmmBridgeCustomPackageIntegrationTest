// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeCustomPackageIntegrationTest/co/touchlab/kmmbridge/test/custompackage/shared-kmmbridge/1.1.2/shared-kmmbridge-1.1.2.zip"
let remoteKotlinChecksum = "e5a561392f96923d7809b648d389a8770deb03d8f73d38c81de0b8829702f1a0"
let packageName = "shared"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)

// Test Modification

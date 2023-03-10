// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeCustomPackageIntegrationTest/co/touchlab/kmmbridge/test/custompackage/shared-kmmbridge/1.1.6/shared-kmmbridge-1.1.6.zip"
let remoteKotlinChecksum = "8e0d4888011d79b9ea063d811472f8a5ffee39ec4a2dddb59070b49f811107ff"
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

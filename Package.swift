// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeCustomPackageIntegrationTest/co/touchlab/kmmbridge/test/custompackage/shared-kmmbridge/1.1.5/shared-kmmbridge-1.1.5.zip"
let remoteKotlinChecksum = "19eac59d1140b3b034516e54a634a10555c75888d27f715b1647e736f0a40a15"
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

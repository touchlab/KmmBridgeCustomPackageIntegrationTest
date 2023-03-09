// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeCustomPackageIntegrationTest/co/touchlab/kmmbridge/test/custompackage/shared-kmmbridge/1.1.3/shared-kmmbridge-1.1.3.zip"
let remoteKotlinChecksum = "fff6f210c84c9a9233852499c760efbe3e0cfd729d523de216b2c8004a6b0d23"
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

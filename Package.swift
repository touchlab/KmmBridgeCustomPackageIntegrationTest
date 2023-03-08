// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeCustomPackageIntegrationTest/co/touchlab/kmmbridge/test/custompackage/shared-kmmbridge/1.1.1/shared-kmmbridge-1.1.1.zip"
let remoteKotlinChecksum = "a7301c1f38f531587dff24281c110e5929b2bc67bfd73c19ec096da4b12b0d8a"
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

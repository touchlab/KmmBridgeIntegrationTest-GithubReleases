// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://api.github.com/repos/touchlab/KmmBridgeIntegrationTest-GithubReleases/releases/assets/84817712.zip"
let remoteKotlinChecksum = "2b1a057ae0ad54e63cdd6f23a41f967dbc689882d323b0e2173b36db66a161ee"
let packageName = "shared"

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
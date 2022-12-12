// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://api.github.com/repos/touchlab/KmmBridgeIntegrationTest-GithubReleases/releases/assets/87879529.zip"
let remoteKotlinChecksum = "267067a65ede60b46ed44989e9dffd4c1270912111603d6bb8cf0e9b305ca50b"
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
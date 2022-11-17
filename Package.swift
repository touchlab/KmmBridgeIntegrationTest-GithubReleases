// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://api.github.com/repos/touchlab/KmmBridgeIntegrationTest-GithubReleases/releases/assets/84966397.zip"
let remoteKotlinChecksum = "ef941d44c66bd548478a85c9856736b64aca93fb8984196d8ca637c7a1f9f467"
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
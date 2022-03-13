// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "Kit",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15), .macOS(.v12)
    ],
    products: [
        .library(name: "Kit", type: .dynamic, targets: ["Kit"]),
        .library(name: "KitStatic", type: .static, targets: ["Kit"])
    ],
    dependencies: [
        .package(url: "git@github.com:apple/swift-docc-plugin.git", branch: "main")
    ],
    targets: [
        .target(
            name: "Kit",
            dependencies: [],
            path: "sources/main",
            resources: [
                .process("resources")
            ]
        ),
        .testTarget(
            name: "KitTests",
            dependencies: ["Kit"],
            path: "sources/tests",
            resources: [
                .process("resources")
            ]
        )
    ]
)

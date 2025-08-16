// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "swift-report",
    platforms: [
        .macOS(.v11)
    ],
    products: [
        .executable(name: "swift-report", targets: ["SwiftReport"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", .upToNextMinor(from: "1.6.1")),
        .package(url: "https://github.com/JohnSundell/ShellOut.git", .upToNextMinor(from: "2.3.0"))
    ],
    targets: [
        .executableTarget(
            name: "SwiftReport",
            dependencies: [
                .product(name: "ShellOut", package: "ShellOut"),
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        ),
    ]
)

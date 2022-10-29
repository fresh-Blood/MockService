// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MockService",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "MockService",
            targets: ["MockService"]),
    ],
    targets: [
        .target(
            name: "MockService",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "MockServiceTests",
            dependencies: ["MockService"]),
    ]
)

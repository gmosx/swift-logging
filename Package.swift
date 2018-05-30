// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Logging",
    products: [
        .library(
            name: "Logging",
            targets: ["Logging"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Logging",
            dependencies: []
        ),
        .testTarget(
            name: "LoggingTests",
            dependencies: ["Logging"]
        ),
        .target(
            name: "logging-example",
            dependencies: ["Logging"]
        ),
    ]
)

// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "RevenueCatUtilities",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .tvOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        .library(
            name: "RevenueCatUtilities",
            targets: ["RevenueCatUtilities"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/RevenueCat/purchases-ios.git", from: "5.14.0")
    ],
    targets: [
        .target(
            name: "RevenueCatUtilities",
            dependencies: [
                .product(name: "RevenueCat", package: "purchases-ios")
            ],
            resources: [
                .process("Resources")
            ]
        )
    ]
)

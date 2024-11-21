// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "RevenueCatUtilities",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_13),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "RevenueCatUtilities",
            targets: ["RevenueCatUtilities"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/RevenueCat/purchases-ios.git", from: "5.9.0")
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

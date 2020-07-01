// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "base64Converter",
    products: [
        .executable(name: "base64Converter", targets: ["base64Converter"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.2.0"),
    ],
    targets: [
        .target(
            name: "base64Converter",
            dependencies: [
            .product(name: "ArgumentParser", package: "swift-argument-parser"),
            "Core"
        ]),
        .target(name: "Core"),
        .testTarget(
            name: "base64ConverterTests",
            dependencies: ["Core"]),
    ]
)

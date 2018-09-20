// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "Color",
    products: [
        .library(name: "Color", targets: ["Color"])
    ],
    targets: [
        .target(name: "Color"),
        .testTarget(name: "ColorTests", dependencies: ["Color"])
    ]
)

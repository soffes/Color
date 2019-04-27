// swift-tools-version:5.0

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

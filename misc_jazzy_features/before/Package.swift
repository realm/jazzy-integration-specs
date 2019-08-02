// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "MiscJazzyFeatures",
    products: [
        .library(name: "MiscJazzyFeatures", targets: ["MiscJazzyFeatures"])
    ],
    targets: [
        .target(
            name: "MiscJazzyFeatures",
            path: "MiscJazzyFeatures"
        )
    ]
)

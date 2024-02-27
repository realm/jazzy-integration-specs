// swift-tools-version:5.9

import PackageDescription

let package = Package(
  name: "JazzyMultiModuleFeatures",
  products: [
    .library(
      name: "JazzyMultiModuleFeatures",
      targets: [
        "MultiKitAlpha",
        "MultiKitBeta",
        "MultiKitDelta"
      ]
    )
  ],
  targets: [
    .target(
      name: "MultiKitAlpha",
      path: "MultiKitAlpha"
    ),
    .target(
      name: "MultiKitBeta",
      dependencies: [.target(name: "MultiKitAlpha")],
      path: "MultiKitBeta"
    ),
    .target(
      name: "MultiKitDelta",
      dependencies: [.target(name: "MultiKitAlpha")],
      path: "MultiKitDelta"
    )
  ]
)

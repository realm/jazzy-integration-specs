// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "behaviours_for_undocumented",
    targets: [
        Target(name: "Dependency"),
        Target(name: "Behaviours", dependencies: ["Dependency"])
    ]
)

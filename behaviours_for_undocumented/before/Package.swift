// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "behaviors_for_undocumented",
    targets: [
        Target(name: "Dependency"),
        Target(name: "Behaviors", dependencies: ["Dependency"])
    ]
)

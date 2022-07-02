// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Entities",
    dependencies: [],
    targets: [
        .executableTarget(name: "Entities", dependencies: []),
        .testTarget(name: "EntitiesTests", dependencies: ["Entities"]),
    ]
)

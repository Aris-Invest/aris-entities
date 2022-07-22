// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "aris-entities",
    products: [
        .library(name: "ArisEntities", targets: ["ArisEntities"])
    ],
    dependencies: [],
    targets: [
        .target(name: "ArisEntities", dependencies: [])
    ]
)

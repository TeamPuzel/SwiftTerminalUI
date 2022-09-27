// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftTerminalUI",
    products: [
        .library(name: "SwiftTerminalUI", targets: ["SwiftTerminalUI"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/TeamPuzel/CoreANSI.git",
            branch: "master")
    ],
    targets: [.target(name: "SwiftTerminalUI", dependencies: ["CoreANSI"])]
)

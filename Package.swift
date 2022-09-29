// swift-tools-version: 5.5

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

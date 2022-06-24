// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "CHIPageControl",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "CHIPageControl",
            targets: ["CHIPageControl"]
        )
    ],
    targets: [
        .target(
            name: "CHIPageControl",
            path: "CHIPageControl",
            exclude: [
                "Info.plist"
            ]
        )
    ]
)

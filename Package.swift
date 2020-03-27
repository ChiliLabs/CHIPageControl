// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "CHIPageControl",
    platforms: [.iOS(.v8)],
    products: [
        .library(
            name: "CHIPageControl",
            targets: ["CHIPageControl"]
        ),
    ],
    targets: [
        .target(
            name: "CHIPageControl",
            path: "CHIPageControl"
        )
    ]
)

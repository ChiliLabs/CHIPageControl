// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CHIPageControl",
    platforms: [
        .iOS(.v8),
    ],
    products: [
        // .library(name: "CHIPageControl",  targets: ["CHIPageControl"]),
        // .library(name: "Aji",  targets: ["Aji"]),
        // .library(name: "Aleppo",  targets: ["Aleppo"]),
        // .library(name: "Chimayo",  targets: ["Chimayo"]),
        // .library(name: "Fresno",  targets: ["Fresno"]),
        .library(name: "Jalapeno",  targets: ["CHIPageControl", "Jalapeno"])//,
        // .library(name: "Jaloro",  targets: ["Jaloro"]),
        // .library(name: "Paprika",  targets: ["Paprika"]),
        // .library(name: "Puya",  targets: ["Puya"])
    ],
    dependencies: [],
    targets: [
        .target(name: "CHIPageControl", path: "CHIPageControl/Core"),
        // .target(name: "Aji", dependencies: ["CHIPageControl"], path: "CHIPageControl", sources: ["CHIPageControlAji.swift"]),
        // .target(name: "Aleppo", dependencies: ["CHIPageControl"], path: "CHIPageControl", sources: ["CHIPageControlAleppo.swift"]),
        // .target(name: "Chimayo", dependencies: ["CHIPageControl"], path: "CHIPageControl", sources: ["CHIPageControlChimayo.swift"]),
        // .target(name: "Fresno", dependencies: ["CHIPageControl"], path: "CHIPageControl", sources: ["CHIPageControlFresno.swift"]),
        .target(name: "Jalapeno", path: "CHIPageControl", sources: ["CHIPageControlJalapeno.swift"])//,
        // .target(name: "Jaloro", dependencies: ["CHIPageControl"], path: "CHIPageControl", sources: ["CHIPageControlJaloro.swift"]),
        // .target(name: "Paprika", dependencies: ["CHIPageControl"], path: "CHIPageControl", sources: ["CHIPageControlPaprika.swift"]),
        // .target(name: "Puya", dependencies: ["CHIPageControl"], path: "CHIPageControl", sources: ["CHIPageControlPuya.swift"])
        
    ],
    swiftLanguageVersions: [.v5]
)

// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CHIPageControl",
    platforms: [
        .iOS(.v8),
    ],
    products: [
        .library(name: "CHIPageControl",  targets: ["CHIPageControl", "Aji", "Aleppo", "Chimayo", "Fresno", "Jalapeno", "Jaloro", "Paprika", "Puya"])
    ],
    dependencies: [],
    targets: [
        .target(name: "CHIPageControl", path: "CHIPageControl/Core"),
        .target(name: "Aji", dependencies: ["CHIPageControl"], sources: ["CHIPageControl/CHIPageControlAji.swift"]),
        .target(name: "Aleppo", dependencies: ["CHIPageControl"], sources: ["CHIPageControl/CHIPageControlAleppo.swift"]),
        .target(name: "Chimayo", dependencies: ["CHIPageControl"], sources: ["CHIPageControl/CHIPageControlChimayo.swift"]),
        .target(name: "Fresno", dependencies: ["CHIPageControl"], sources: ["CHIPageControl/CHIPageControlFresno.swift"]),
        .target(name: "Jalapeno", dependencies: ["CHIPageControl"], sources: ["CHIPageControl/CHIPageControlJalapeno.swift"]),
        .target(name: "Jaloro", dependencies: ["CHIPageControl"], sources: ["CHIPageControl/CHIPageControlJaloro.swift"]),
        .target(name: "Paprika", dependencies: ["CHIPageControl"], sources: ["CHIPageControl/CHIPageControlPaprika.swift"]),
        .target(name: "Puya", dependencies: ["CHIPageControl"], sources: ["CHIPageControl/CHIPageControlPuya.swift"])
        
    ],
    swiftLanguageVersions: [.v5]
)

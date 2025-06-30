// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

// 패키지 메니페스트 파일: 패키지에 대해서 설명하는 파일, 패키지 구성 파일

import PackageDescription

let package = Package(
    name: "MyFirstLibrary",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyFirstLibrary",
            targets: ["MyFirstLibrary"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MyFirstLibrary"),
        .testTarget(
            name: "MyFirstLibraryTests",
            dependencies: ["MyFirstLibrary"]
        ),
    ]
)

// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "tokamak-playground",
    products: [
        .executable(name: "tokamak-playground", targets: ["tokamak-playground"])
    ],
    dependencies: [
        .package(name: "Tokamak", url: "https://github.com/swiftwasm/Tokamak", from: "0.3.0")
    ],
    targets: [
        .target(
            name: "tokamak-playground",
            dependencies: [
                .product(name: "TokamakShim", package: "Tokamak")
            ]),
        .testTarget(
            name: "tokamak-playgroundTests",
            dependencies: ["tokamak-playground"]),
    ]
)
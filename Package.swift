// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "AiMetadataCleanerUrlTools",
    products: [
        .library(name: "AiMetadataCleanerUrlTools", targets: ["AiMetadataCleanerUrlTools"]),
    ],
    targets: [
        .target(name: "AiMetadataCleanerUrlTools", path: "swift/Sources/AiMetadataCleanerUrlTools"),
    ]
)

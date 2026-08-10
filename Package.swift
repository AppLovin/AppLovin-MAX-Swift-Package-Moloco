// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationMolocoAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AppLovinMediationMolocoAdapter",
            targets: ["AppLovinMediationMolocoAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/moloco/moloco-sdk-ios-spm.git", exact: "4.9.1")
    ],
    targets: [
        .target(
            name: "AppLovinMediationMolocoAdapterTarget",
            dependencies: [
                .target(name: "AppLovinMediationMolocoAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "MolocoSDK", package: "moloco-sdk-ios-spm"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AppLovinMediationMolocoAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/moloco-adapter/AppLovinMediationMolocoAdapter-4.9.1.0.zip",
            checksum: "5a286b22156dea568ef832818f32e1d72d51a024135129ba24756becb6dd5418"
        )
    ]
)

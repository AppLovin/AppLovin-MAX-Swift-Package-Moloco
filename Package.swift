// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationMolocoAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AppLovinMediationMolocoAdapter",
            targets: ["AppLovinMediationMolocoAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/moloco/moloco-sdk-ios-spm.git", exact: "4.11.1")
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
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/moloco-adapter/AppLovinMediationMolocoAdapter-4.11.1.0.zip",
            checksum: "5a0ad2547d0e9f1d6a51ac95aed71c1ce6dc02da84bc13b478577bc82eddfadc"
        )
    ]
)

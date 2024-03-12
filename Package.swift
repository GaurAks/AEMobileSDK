// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AEMobileSDK",
    platforms: [
        .iOS(.v17)
        ],
    products: [
        .library(
            name: "AEMobileSDK",
            targets: ["AEMobileSDK","AEWalletHIDSDK","SeosMobileKeysSDK","BerTlv","CocoaLumberjack","JSONModel","Mixpanel"]),
    ],
    targets: [
        .target(
            name: "AEMobileSDK",
            resources: [
                    .process("OrigoSDK.xcframework")
                  ]),
        
        //Release binaryTarget
//        .binaryTarget(name: "SeosMobileKeysSDK", path: "Release/SeosMobileKeysSDK.xcframework"),
//        .binaryTarget(name: "AEWalletHIDSDK", path: "Release/OrigoSDK.xcframework"),
//        .binaryTarget(name: "BerTlv", path: "Release/Release-universal/BerTlv.xcframework"),
//        .binaryTarget(name: "CocoaLumberjack", path: "Release/Release-universal/CocoaLumberjack.xcframework"),
//        .binaryTarget(name: "JSONModel", path: "Release/Release-universal/JSONModel.xcframework"),
//        .binaryTarget(name: "Mixpanel", path: "Release/Release-universal/Mixpanel.xcframework"),
        // Debug binaryTarget
        .binaryTarget(name: "SeosMobileKeysSDK", path: "Debug/SeosMobileKeysSDK.xcframework"),
        .binaryTarget(name: "AEWalletHIDSDK", path: "Debug/OrigoSDK.xcframework"),
        .binaryTarget(name: "BerTlv", path: "Debug/Debug-universal/BerTlv.xcframework"),
        .binaryTarget(name: "CocoaLumberjack", path: "Debug/Debug-universal/CocoaLumberjack.xcframework"),
        .binaryTarget(name: "JSONModel", path: "Debug/Debug-universal/JSONModel.xcframework"),
        .binaryTarget(name: "Mixpanel", path: "Debug/Debug-universal/Mixpanel.xcframework"),
        .testTarget(
            name: "AEMobileSDKTests",
            dependencies: ["AEMobileSDK"]),
    ]
)

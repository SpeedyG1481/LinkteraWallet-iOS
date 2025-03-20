// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LinkteraWallet",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LinkteraWallet",
            targets: [
                "LinkteraWallet",
                "App",
                "Flutter",
                "FlutterPluginRegistrant",
                "firebase_analytics",
                "firebase_core",
                "OrderedSet",
                "TOCropViewController",
                "XYUUID",
                "app_links",
                "camera_avfoundation",
                "device_info_plus",
                "device_uuid",
                "flutter_contacts",
                "flutter_inappwebview_ios",
                "flutter_native_splash",
                "flutter_secure_storage",
                "image_cropper",
                "image_gallery_saver",
                "image_picker_ios",
                "kyc_sdk_plugin",
                "nfc_manager",
                "open_mail_app",
                "package_info_plus",
                "path_provider_foundation",
                "permission_handler_apple",
                "power_factor",
                "scan",
                "share_plus",
                "sqflite_darwin",
                "store_redirect",
                "syncfusion_flutter_pdfviewer",
                "url_launcher_ios",
                "libtesseract",
                "OpenSSL",
                "PowerFactor",
                "SCSoftAutonomousSolutionSdk"
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/mobven/GooglePackages-iOS", branch: "main")
    ],
    targets: [
        .target(
            name: "LinkteraWallet",
            dependencies: [.product(name: "GooglePackages", package: "GooglePackages-iOS")]
        ),
        .binaryTarget(name: "App", path: "binaries/App.xcframework"),
        .binaryTarget(name: "Flutter", path: "binaries/Flutter.xcframework"),
        .binaryTarget(name: "FlutterPluginRegistrant", path: "binaries/FlutterPluginRegistrant.xcframework"),
        .binaryTarget(name: "OrderedSet", path: "binaries/OrderedSet.xcframework"),
        .binaryTarget(name: "TOCropViewController", path: "binaries/TOCropViewController.xcframework"),
        .binaryTarget(name: "XYUUID", path: "binaries/XYUUID.xcframework"),
        .binaryTarget(name: "app_links", path: "binaries/app_links.xcframework"),
        .binaryTarget(name: "camera_avfoundation", path: "binaries/camera_avfoundation.xcframework"),
        .binaryTarget(name: "device_info_plus", path: "binaries/device_info_plus.xcframework"),
        .binaryTarget(name: "device_uuid", path: "binaries/device_uuid.xcframework"),
        .binaryTarget(name: "firebase_analytics", path: "binaries/firebase_analytics.xcframework"),
        .binaryTarget(name: "firebase_core", path: "binaries/firebase_core.xcframework"),
        .binaryTarget(name: "flutter_contacts", path: "binaries/flutter_contacts.xcframework"),
        .binaryTarget(name: "flutter_inappwebview_ios", path: "binaries/flutter_inappwebview_ios.xcframework"),
        .binaryTarget(name: "flutter_native_splash", path: "binaries/flutter_native_splash.xcframework"),
        .binaryTarget(name: "flutter_secure_storage", path: "binaries/flutter_secure_storage.xcframework"),
        .binaryTarget(name: "image_cropper", path: "binaries/image_cropper.xcframework"),
        .binaryTarget(name: "image_gallery_saver", path: "binaries/image_gallery_saver.xcframework"),
        .binaryTarget(name: "image_picker_ios", path: "binaries/image_picker_ios.xcframework"),
        .binaryTarget(name: "kyc_sdk_plugin", path: "binaries/kyc_sdk_plugin.xcframework"),
        .binaryTarget(name: "nfc_manager", path: "binaries/nfc_manager.xcframework"),
        .binaryTarget(name: "open_mail_app", path: "binaries/open_mail_app.xcframework"),
        .binaryTarget(name: "package_info_plus", path: "binaries/package_info_plus.xcframework"),
        .binaryTarget(name: "path_provider_foundation", path: "binaries/path_provider_foundation.xcframework"),
        .binaryTarget(name: "permission_handler_apple", path: "binaries/permission_handler_apple.xcframework"),
        .binaryTarget(name: "power_factor", path: "binaries/power_factor.xcframework"),
        .binaryTarget(name: "scan", path: "binaries/scan.xcframework"),
        .binaryTarget(name: "share_plus", path: "binaries/share_plus.xcframework"),
        .binaryTarget(name: "sqflite_darwin", path: "binaries/sqflite_darwin.xcframework"),
        .binaryTarget(name: "store_redirect", path: "binaries/store_redirect.xcframework"),
        .binaryTarget(name: "syncfusion_flutter_pdfviewer", path: "binaries/syncfusion_flutter_pdfviewer.xcframework"),
        .binaryTarget(name: "url_launcher_ios", path: "binaries/url_launcher_ios.xcframework"),
        .binaryTarget(name: "libtesseract", path: "binaries/libtesseract.xcframework"),
        .binaryTarget(name: "OpenSSL", path: "binaries/OpenSSL.xcframework"),
        .binaryTarget(name: "PowerFactor", path: "binaries/PowerFactor.xcframework"),
        .binaryTarget(name: "SCSoftAutonomousSolutionSdk", path: "binaries/SCSoftAutonomousSolutionSdk.xcframework")
    ]
)

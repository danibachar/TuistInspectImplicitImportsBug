// swift-tools-version: 6.0
import PackageDescription

#if TUIST
    import struct ProjectDescription.PackageSettings

    let packageSettings = PackageSettings(
        // Customize the product types for specific package product
        // Default is .staticFramework
        // productTypes: ["Alamofire": .framework,]
        productTypes: [:]
    )
#endif

let package = Package(
    name: "ImplicitImportsFails",
    dependencies: [
        // Add your own dependencies here:
         .package(url: "https://github.com/Alamofire/Alamofire", from: "5.0.0"),
         .package(url: "https://github.com/apple/swift-log.git", exact: "1.6.4"),
        // You can read more about dependencies here: https://docs.tuist.io/documentation/tuist/dependencies
    ]
)

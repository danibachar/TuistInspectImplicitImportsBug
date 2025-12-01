import Foundation
import ProjectDescription

func myProject() -> Project {
    if ProcessInfo.processInfo.environment["TUIST_BUILDABLE_FOLDERS"] == "true" {
        return Project(
            name: "ImplicitImportsFails",
            targets: [
                .target(
                    name: "ImplicitImportsFails",
                    destinations: .iOS,
                    product: .staticFramework,
                    bundleId: "io.tuist.ImplicitImportsFails",
                    buildableFolders: [
                        "Sources/",
                        "Resources/"
                    ],
                    dependencies: [
                        .external(name: "Alamofire"),
                        .external(name: "Logging"),
                    ]
                ),
                .target(
                    name: "ImplicitImportsFailsTests",
                    destinations: .iOS,
                    product: .unitTests,
                    bundleId: "io.tuist.ImplicitImportsFailsTests",
                    infoPlist: .default,
                    buildableFolders: ["Tests/"],
                    dependencies: [
                        .target(name: "ImplicitImportsFails"),
                        .external(name: "Alamofire"),
                    ]
                ),
            ]
        )
    }
    
    return Project(
        name: "ImplicitImportsFails",
        targets: [
            .target(
                name: "ImplicitImportsFails",
                destinations: .iOS,
                product: .staticFramework,
                bundleId: "io.tuist.ImplicitImportsFails",
                sources: ["Sources/**"],
                resources: ["Resources/**"],
                dependencies: [
                    .external(name: "Alamofire"),
                    .external(name: "Logging"),
                ]
            ),
            .target(
                name: "ImplicitImportsFailsTests",
                destinations: .iOS,
                product: .unitTests,
                bundleId: "io.tuist.ImplicitImportsFailsTests",
                infoPlist: .default,
                sources: ["Tests/**"],
                resources: [],
                dependencies: [
                    .target(name: "ImplicitImportsFails"),
                    .external(name: "Alamofire"),
                ]
            ),
        ]
    )
}


let project = myProject()

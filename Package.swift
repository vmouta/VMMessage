import PackageDescription

let package = Package(
    name: "VMMessaging",
    dependencies: [
        .Package(url: "https://github.com/Alamofire/Alamofire.git",
                 majorVersion: 4)
    ],
    exclude: ["Example"]
)

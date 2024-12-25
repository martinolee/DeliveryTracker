import ProjectDescription

let project = Project(
  name: "DeliveryTracker",
  settings: .settings(configurations: [
    .debug(name: "Debug", xcconfig: "./xcconfigs/DeliveryTracker.xcconfig"),
    .release(name: "Release", xcconfig: "./xcconfigs/DeliveryTracker.xcconfig"),
  ]),
  targets: [
    .target(
      name: "DeliveryTracker",
      destinations: .iOS,
      product: .app,
      bundleId: "com.soohan.DeliveryTracker",
      sources: ["Source/**"],
      resources: ["Resources/**"],
      dependencies: [
      ],
      settings: .settings(configurations: [
        .debug(name: "Debug", xcconfig: "./xcconfigs/DeliveryTracker.xcconfig"),
        .debug(name: "Release", xcconfig: "./xcconfigs/DeliveryTracker.xcconfig"),
      ])
    ),
  ]
)

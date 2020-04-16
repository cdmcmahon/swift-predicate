// swift-tools-version:5.2.0

import PackageDescription

let package = Package(
  name: "Predicate",
  products: [
    .library(
      name: "Predicate",
      targets: ["Predicate"]),
//    .library(
//      name: "BiPredicate",
//      targets: ["BiPredicate"]),
    .library(
      name: "PredicateCollections",
      targets: ["PredicateCollections"]),
  ],
  targets: [
    .target(
      name: "Predicate",
      dependencies: []),
//    .target(
//      name: "BiPredicate",
//      dependencies: []),
    .target(
      name: "PredicateCollections",
      dependencies: ["Predicate"]),
    .testTarget(
      name: "PredicateTests",
      dependencies: ["Predicate"]),
    .testTarget(
    name: "PredicateCollectionsTests",
    dependencies: ["PredicateCollections"]),
  ]
)

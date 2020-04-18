// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "Predicate",
  products: [
    .library(
      name: "Predicate",
      targets: ["Predicate"]),
    .library(
      name: "BiPredicate",
      targets: ["BiPredicate"]),
    .library(
      name: "PredicateCollections",
      targets: ["PredicateCollections"]),
  ],
  targets: [
    .target(
      name: "Predicate",
      dependencies: []),
    .testTarget(
      name: "PredicateTests",
      dependencies: ["Predicate"]),
    .target(
      name: "BiPredicate",
      dependencies: []),
    .testTarget(
      name: "BiPredicateTests",
      dependencies: ["BiPredicate"]),
    .target(
      name: "PredicateCollections",
      dependencies: ["Predicate"]),
    .testTarget(
      name: "PredicateCollectionsTests",
      dependencies: ["PredicateCollections"])
  ]
)

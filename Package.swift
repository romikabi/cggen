// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "cggen",
  products: [
    .executable(name: "cggen", targets: ["cggen"]),
    .executable(name: "png-fuzzy-compare", targets: ["png-fuzzy-compare"]),
    .executable(name: "pdf-to-png", targets: ["pdf-to-png"]),
  ],
  targets: [
    .target(
      name: "cggen",
      dependencies: ["ArgParse", "Base", "PDFParse"]),
    .target(
      name: "png-fuzzy-compare",
      dependencies: ["ArgParse", "Base"]),
    .target(
      name: "pdf-to-png",
      dependencies: ["ArgParse", "Base"]),
    .target(
      name: "ArgParse"),
    .target(
      name: "Base"),
    .target(
      name: "PDFParse",
      dependencies: ["Base"]),
  ]
)

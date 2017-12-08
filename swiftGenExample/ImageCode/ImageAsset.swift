
// Generated using SwiftGen, using my-templete created by Hanson

import UIKit.UIImage

typealias Image = UIImage

@available(*, deprecated, renamed: "ImageAsset")
typealias AssetType = ImageAsset

struct ImageAsset {
  fileprivate var name: String

  var image: Image {
    let bundle = Bundle(for: BundleToken.self)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    guard let result = image else { fatalError("Unable to load image named \(name).") }
    return result
  }
}

enum Asset {
  static let arrowBlue = ImageAsset(name: "arrow_blue")
  static let arrowBrown = ImageAsset(name: "arrow_brown")
  static let iconLeftBack = ImageAsset(name: "icon_left_back")
  static let startLogo = ImageAsset(name: "start_logo")
}


extension Image {
  convenience init!(asset: ImageAsset) {
    let bundle = Bundle(for: BundleToken.self)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
  }
}


private final class BundleToken {}

#
#  Be sure to run `pod spec lint SharePlus.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "SharePlus"
  s.version      = "1.0.0"
  s.summary      = "share with native api"
  s.homepage     = "https://github.com/vvzzz/SharePlus"
  s.license      = "MIT"

  s.author             = { "wangk" => "liziheimao@163.com" }
  s.social_media_url   = "https://github.com/vvzzz"
 
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/vvzzz/SharePlus.git", :tag => "1.0.0" }
  s.source_files  = "Source/*.{h,m}"
  s.frameworks = "UIKit", "Foundation"
  s.requires_arc = true

end

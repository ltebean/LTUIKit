Pod::Spec.new do |s|
  s.name         = "LTUIKit"
  s.version      = "0.1.0"
  s.summary      = "some IB_DESIGNABLE UI components and UIKit category methods"
  s.homepage     = "https://github.com/ltebean/LTUIKit"
  s.license      = "MIT"
  s.author       = { "ltebean" => "yucong1118@gmail.com" }
  s.source       = { :git => "https://github.com/ltebean/LTUIKit.git", :tag => "v" + s.version.to_s}
  s.source_files = "LTUIKit/Sources/**/*.{h,m}"  
  s.requires_arc = true
  s.platform     = :ios, '7.0'
end


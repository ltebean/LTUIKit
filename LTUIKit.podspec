Pod::Spec.new do |s|

  s.name         = "LTUIKit"
  s.version      = "0.1.0"
  s.summary      = "UI components"

  s.description  = <<-DESC
                   UI components
                   DESC

  s.homepage     = "https://github.com/ltebean/LTUIKit"
  s.author       = { "ltebean" => "yucong1118@gmail.com" }
  s.platform     = :ios, "7.0"

  s.source       = { :git => "git@github.com:ltebean/LTUIKit.git", :tag => "v" + s.version.to_s }
  s.source_files = "LTUIKit/Sources/**/*.{h,m}"  
  s.requires_arc = true
end

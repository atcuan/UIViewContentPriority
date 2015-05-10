Pod::Spec.new do |s|
  s.name         = "UIViewContentPriority"
  s.version      = "1.9.1"
  s.summary      = "UIView contentHuggingPriority & contentCompressionResistancePriority wrapper"
  s.homepage     = "https://github.com/showmecode/RefreshControl"
  s.license      = "MIT"
  s.author             = { "Moch" => "atcuan@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/atcuan/UIViewContentPriority.git",
:tag => s.version.to_s }
  s.requires_arc = true
  s.source_files  = "UIViewContentPriority/*.{h,m}"
  s.frameworks = 'Foundation', 'UIKit'
end

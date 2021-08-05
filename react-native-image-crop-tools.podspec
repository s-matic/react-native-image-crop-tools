require 'json'

Pod::Spec.new do |s|
  package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

  s.name         = "react-native-image-crop-tools"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = "https://github.com/hhunaid/react-native-image-crop-tools"
  s.license      = "MIT"
  s.authors      = { "Hunaid Hassan" => "hhunaid@gmail.com" }
  s.platforms    = { :ios => "9.0" }
  s.framework     = 'UIKit'
  s.requires_arc = true
  s.source       = { :git => "https://github.com/hhunaid/react-native-image-crop-tools.git", :tag => "#{s.version}" }
  s.source_files = "ios/**/*.{h,m}"

  s.dependency "React"
  s.dependency 'TOCropViewController', '2.5.3'
end


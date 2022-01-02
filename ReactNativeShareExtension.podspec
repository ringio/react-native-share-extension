require 'json'

package = JSON.parse(File.read(File.join(__dir__, "package.json")))
version = package['version']

Pod::Spec.new do |s|
  s.name         = "ReactNativeShareExtension"
  s.version      = version
  s.description  = <<-DESC
                    Share extension using react-native for both ios and android
                  DESC
  s.summary      = package['description']
  s.license      = package['license']

  s.author      = "RingIO"
  s.homepage     = "https://github.com/ringio/react-native-share-extension"
  s.platforms     = { :ios => "10.0" }
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '10.0'

  s.source       = { :git => "https://github.com/ringio/react-native-share-extension.git", :tag => "main" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'
end
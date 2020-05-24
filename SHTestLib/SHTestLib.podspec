#
# Be sure to run `pod lib lint SHTestLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

#Pod::Spec.new do |s|
#  s.name             = 'SHTestLib'
#  s.version          = '0.1.0'
#  s.summary          = 'A short description of SHTestLib.'
#
## This description is used to generate tags and improve search results.
##   * Think: What does it do? Why did you write it? What is the focus?
##   * Try to keep it short, snappy and to the point.
##   * Write the description between the DESC delimiters below.
##   * Finally, don't worry about the indent, CocoaPods strips it!
#
#  s.description      = <<-DESC
#TODO: Add long description of the pod here.
#                       DESC
#
#  s.homepage         = 'https://github.com/shiv-appier/SHTestLib'
#  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
#  s.license          = { :type => 'MIT', :file => 'LICENSE' }
#  s.author           = { 'shiv-appier' => 'shiv.raj@appier.com' }
#  s.source           = { :git => 'https://github.com/shiv-appier/SHTestLib.git', :tag => s.version.to_s }
#  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
#
#  s.ios.deployment_target = '8.0'
#
#  s.source_files = 'SHTestLib/Classes/**/*'
#
#  # s.resource_bundles = {
#  #   'SHTestLib' => ['SHTestLib/Assets/*.png']
#  # }
#
#  # s.public_header_files = 'Pod/Classes/**/*.h'
#  # s.frameworks = 'UIKit', 'MapKit'
#  # s.dependency 'AFNetworking', '~> 2.3'
#end

require 'json'

package = JSON.parse(File.read(File.join(__dir__, '..', 'version.json')))

Pod::Spec.new do |s|
  s.name         = "SHTestLib"
  s.version      = package['version']
  s.summary      = "iOS Sdk helps you to track user events in your app and display notifications"

  s.homepage     = "https://www.appier.com/en/index.html"
  s.documentation_url = "https://docs.aiqua.appier.com/docs"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "appier" => "shiv.raj@appier.com" }
  s.platform     = :ios, '11.0'
  s.source       = { :git => "https://github.com/shiv-appier/shtest.git", :tag => "v#{s.version}"}
  s.static_framework = true
  
  s.library = 'z'
  s.source_files = '../Classes/**/*.{h, m, swift}'
  s.vendored_library = "../Classes/**/*.a"
  s.frameworks = 'AdSupport', 'CoreTelephony', 'SystemConfiguration', 'CoreLocation', 'ImageIO', 'MobileCoreServices'

  s.requires_arc = true

end

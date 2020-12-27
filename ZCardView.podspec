#
# Be sure to run `pod lib lint ZCardView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZCardView'
  s.version          = '0.1.0'
  s.summary          = 'ZCardView is a simple card view where you can modify the card radius and card shadow.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
`ZCardView is a subclass of UIView.You can modify the card's radius and shadows.ZCardView makes you easy and saves a lot of develop time.`
                       DESC

  s.homepage         = 'https://github.com/sxudan/ZCardView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sxudan' => 'sudosuwal@gmail.com' }
  s.source           = { :git => 'https://github.com/sxudan/ZCardView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'
  
  s.swift_version = '5.0'
  
  s.platforms = {
      "ios": "12.0"
  }

  s.source_files = 'Source/**/*'
  
  # s.resource_bundles = {
  #   'ZCardView' => ['ZCardView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

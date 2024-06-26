#
# Be sure to run `pod lib lint SwiftyExtendz.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftyExtendz'
  s.version          = '0.1.5'
  s.summary          = 'A comprehensive set of useful SwiftUI Extensions.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A set of repetitively used SwiftUI Extensions and Features.
                       DESC

  s.homepage         = 'https://github.com/Saksham-Shrey/SwiftyExtendz'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Saksham-Shrey' => 'sakshamshrey_work@icloud.com' }
  s.source           = { :git => 'https://github.com/Saksham-Shrey/SwiftyExtendz.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/SakshamShrey'

  s.ios.deployment_target = '16.0'
  s.swift_versions = ['5']

  s.source_files = 'SwiftyExtendz/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SwiftyExtendz' => ['SwiftyExtendz/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'SwiftUI'
  # s.dependency 'AFNetworking', '~> 2.3'
end

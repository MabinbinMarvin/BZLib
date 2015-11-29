#
# Be sure to run `pod lib lint BZLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "BZLib"
  s.version          = "0.1.0"
  s.summary          = "A short description of BZLib."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
			An optional longer description of BZLib
			
			*Markdown format.
			*Don't worry about the indent,we strip it!
                       DESC

  s.homepage         = "https://github.com/<GITHUB_USERNAME>/BZLib"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "binbinma" => "1806554417@qq.com" }
  s.source           = { :git => "https://github.com/MabinbinMarvin/BZLib.git", :tag => '0.1.0' }
  # s.social_media_url = 'http://weibo.com/723117899'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*.{h,m}'
  s.resource_bundles = {
    'BZLib' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'MapKit','MobileCoreServices','CFNetwork','CoreGraphics'
  s.libraries = 'z.1'
  s.dependency 'YSASIHTTPRequest', '~> 2.0.1'
end

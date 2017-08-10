#
# Be sure to run `pod lib lint MailUtil.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HBMailUtil'
  s.version          = '0.1.1'
  s.summary          = 'Sending mails with `skpsmtpmessage` in serial order.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
As you known, `skpsmtpmessage` could not send email in concurrent order. `MailUtil` is a tool that wrap `skpsmtpmessage` to send emails in serial order.
                       DESC

  s.homepage         = 'https://github.com/lishuailibertine/HBMailUtil'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lishuailibertine' => 'lishuai@touker.com' }
  s.source           = { :git => 'https://github.com/lishuailibertine/HBMailUtil.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '7.0'
  s.requires_arc = true

  # s.source_files = 'MailUtil/Classes/**/*'
  s.source_files = 'HBMailUtil/Classes/*.{h,m}'
  s.public_header_files = 'HBMailUtil/Classes/*.h'

  s.subspec 'skpsmtpmessage' do |ss|
    ss.source_files = 'HBMailUtil/Classes/skpsmtpmessage/*.{h,m}'
    ss.public_header_files = 'HBMailUtil/Classes/skpsmtpmessage/*.h'
    ss.requires_arc = false
    ss.frameworks = 'CFNetwork', 'Foundation'
  end

  # s.resource_bundles = {
  #   'MailUtil' => ['MailUtil/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.frameworks = 'CFNetwork', 'Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'
  # s.dependency 'skpsmtpmessage', '~> 0.0.1'
end

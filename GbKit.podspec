Pod::Spec.new do |s|

  # 1
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.name = "GbKit"
  s.summary = "General utilities and modules for glbuyer projects"

  # 2
  s.version = "0.1.3"

  # 3
  s.license = { :type => "MIT", :file => "LICENSE" }

  # 4 - Replace with your name and e-mail address
  s.author = { "Ye" => "guye@glbuyer.com" }

  # For example,
  # s.author = { "Joshua Greene" => "jrg.developer@gmail.com" }


  # 5 - Replace this URL with your own Github page's URL (from the address bar)
  s.homepage = "https://github.com/glbuyer"

  # For example,
  # s.homepage = "https://github.com/JRG-Developer/RWPickFlavor"


  # 6 - Replace this URL with your own Git URL from "Quick Setup"
  s.source = { :git => "https://github.com/glbuyer/GbKit", :tag => "#{s.version}"}

  # For example,
  # s.source = { :git => "https://github.com/JRG-Developer/RWPickFlavor.git", :tag => "#{s.version}"}


  # 7
  s.framework = "UIKit"
  s.dependency 'Alamofire', '~> 4.4'

  # 8
  s.subspec 'Extensions' do |cs|    
    s.source_files = "GbKit/Extensions/*.{swift}", 'GbKit/Extensions'
  end

  # 9
  s.resources = "GbKit/**/*.{png,jpeg,jpg,storyboard,xib}"
end
require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "ironsource-mediation"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://www.dummy.com.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,mm}"

  s.dependency "React-Core"
  s.dependency "IronSourceSDK","7.2.6"
  s.dependency "IronSourceAdMobAdapter","4.3.41.0"
  s.dependency "IronSourceFacebookAdapter","4.3.39.0"
  s.dependency "IronSourceUnityAdsAdapter","4.3.27.0"
end

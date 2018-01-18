Pod::Spec.new do |s|
  s.name        = "FitAutoCoding"
  s.version     = "0.1.3"
  s.summary     = "AutoCoding by Swift4 support"
  s.platform    = :ios, "8.0"
  s.homepage    = "https://github.com/FitClan/FitAutoCoding"
  s.license     = "MIT"
  s.authors     = { "Cyrill" => "lichunyang@outlook.com" }

  s.requires_arc = true

  s.source   = { :git => "https://github.com/FitClan/FitAutoCoding.git", :tag => s.version }
  s.source_files = ["Source/*.swift", "Source/*.h"]
  
  s.pod_target_xcconfig =  { 'SWIFT_VERSION' => '4.0' }
end

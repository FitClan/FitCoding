Pod::Spec.new do |s|
  s.name        = "FitCoding"
  s.version     = "1.0.1"
  s.summary     = "AutoCoding by Swift4 support"
  s.platform    = :ios, "8.0"
  s.homepage    = "https://github.com/FitClan/FitCoding"
  s.license     = "MIT"
  s.authors     = { "Cyrill" => "lichunyang@outlook.com" }

  s.requires_arc = true

  s.source   = { :git => "https://github.com/FitClan/FitCoding.git", :tag => s.version }
  s.source_files = ["Source/*.swift", "Source/*.h"]
  
  s.pod_target_xcconfig =  { 'SWIFT_VERSION' => '4.0' }
end

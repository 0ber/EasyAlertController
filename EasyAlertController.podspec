Pod::Spec.new do |s|
  s.name         = 'EasyAlertController'
  s.version      = '0.0.2'
  s.summary      = 'UIAlertCotroller extensions for easy using'
  s.license      = 'MIT'
  s.homepage     = 'https://github.com/ober01/EasyAlertController'
  s.author       = { 'Alex Kalinkin' => 'kalinkin.aleksey@gmail.com' }
  s.ios.deployment_target = '8.0'
  s.source       = { :git => 'https://github.com/ober01/EasyAlertController.git', :tag => s.version.to_s }
  s.source_files  = 'EasyAletrController/EasyAlertController/*.swift'
  s.requires_arc = true
end

Pod::Spec.new do |s|
  s.name             = 'AMRAdapterAdmost'
  s.version          = '1.6.0.2'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited. 
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Admost adapter for AMR SDK.'
  s.description      = 'AMR Admost adapter allows publishers to mediate Admost banner and interstitial ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-ADMOST.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios'
  s.platform 			= :ios
  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64' }
  s.dependency 'AMRSDK', '~> 1.5.0'
  s.dependency 'AMRAdmostSDK', '~> 1.0.9'
  s.vendored_libraries = 'AMRAdapterAdmost/Libs/libAMRAdapterAdmost.a'
  s.resource = 'AMRAdapterAdmost/Resources/AMRAdapterAdmostResources.bundle'
end

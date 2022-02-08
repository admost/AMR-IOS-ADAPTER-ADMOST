Pod::Spec.new do |s|
  s.name             = 'AMRAdapterAdmost-Beta'
  s.version          = '1.6.0.3'
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
  s.pod_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-ObjC -lc++',
    "VALID_ARCHS": "arm64 armv7 x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'armv7 arm64',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }
  s.dependency 'AMRSDK-Beta', '~> 1.5.6'
  s.dependency 'AMRAdmostSDK-Beta', '~> 1.0.15'
  s.vendored_frameworks = 'AMRAdapterAdmost/Libs/AMRAdapterAdmost.xcframework'
  s.resource = 'AMRAdapterAdmost/Resources/AMRAdapterAdmostResources.bundle'
end

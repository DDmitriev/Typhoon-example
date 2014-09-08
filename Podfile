platform :ios, '6.1'

target :PocketForecast, :exclusive => true do

  pod 'Typhoon'
  pod 'OCLogTemplate'
  pod 'RaptureXML'
  pod 'CKUITools'
  pod 'NGAParallaxMotion'
  pod 'FlatUIKit'
  pod 'PaperFold', :git => 'https://github.com/jasperblues/PaperFold-for-iOS.git', :tag => '1.2-no-gesture-recognizers'
  pod 'NSURL+QueryDictionary'

end

# Test Dependencies

target :PocketForecastTests do
  pod 'Expecta', '~> 0.2.1'
  pod 'OCHamcrest'
  pod 'OCMockito'
end

post_install do |installer|
  installer.project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['GCC_WARN_INHIBIT_ALL_WARNINGS'] = 'YES'
    end
  end
end

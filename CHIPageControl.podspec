Pod::Spec.new do |s|
  s.name             = 'CHIPageControl'
  s.version          = '0.0.2'
  s.summary          = 'CHIPageControl is a set of cool animated page controls written in Swift to replace boring UIPageControl.'

  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'

  s.homepage         = 'https://github.com/ChiliLabs/CHIPageControl'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Chili' => 'studio@chi.lv' }
  s.source           = { :git => 'https://github.com/ChiliLabs/CHIPageControl.git', :tag => s.version.to_s }

  s.source_files = 'CHIPageControl/*.swift', 'CHIPageControl/Core/*.swift'

end
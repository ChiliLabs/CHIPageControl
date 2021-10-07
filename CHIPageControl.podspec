Pod::Spec.new do |s|
  s.name             = 'CHIPageControl'
  s.version          = '0.3.0'
  s.summary          = 'CHIPageControl is a set of cool animated page controls written in Swift to replace boring UIPageControl.'

  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'

  s.homepage         = 'https://github.com/ChiliLabs/CHIPageControl'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Chili' => 'studio@chi.lv' }
  s.source           = { :git => 'https://github.com/ChiliLabs/CHIPageControl.git', :tag => s.version.to_s }
  s.swift_version    = '5.0'

  s.source_files = 'Sources/CHIPageControl/*.swift', 'Sources/CHIPageControl/Core/*.swift'

  s.subspec 'Aji' do |aji|
    aji.source_files = 'Sources/CHIPageControl/CHIPageControlAji.swift', 'Sources/CHIPageControl/Core/*.swift'
  end

  s.subspec 'Aleppo' do |aleppo|
    aleppo.source_files = 'Sources/CHIPageControl/CHIPageControlAleppo.swift', 'Sources/CHIPageControl/Core/*.swift'
  end

  s.subspec 'Chimayo' do |chimayo|
    chimayo.source_files = 'Sources/CHIPageControl/CHIPageControlChimayo.swift', 'Sources/CHIPageControl/Core/*.swift'
  end

  s.subspec 'Fresno' do |fresno|
    fresno.source_files = 'Sources/CHIPageControl/CHIPageControlFresno.swift', 'Sources/CHIPageControl/Core/*.swift'
  end

  s.subspec 'Jalapeno' do |jalapeno|
    jalapeno.source_files = 'Sources/CHIPageControl/CHIPageControlJalapeno.swift', 'Sources/CHIPageControl/Core/*.swift'
  end

  s.subspec 'Jaloro' do |jaloro|
    jaloro.source_files = 'Sources/CHIPageControl/CHIPageControlJaloro.swift', 'Sources/CHIPageControl/Core/*.swift'
  end

  s.subspec 'Paprika' do |paprika|
    paprika.source_files = 'Sources/CHIPageControl/CHIPageControlPaprika.swift', 'Sources/CHIPageControl/Core/*.swift'
  end

  s.subspec 'Puya' do |puya|
    puya.source_files = 'Sources/CHIPageControl/CHIPageControlPuya.swift', 'Sources/CHIPageControl/Core/*.swift'
  end

end

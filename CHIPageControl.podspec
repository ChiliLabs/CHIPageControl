Pod::Spec.new do |s|
  s.name             = 'CHIPageControl'
  s.version          = '0.1.3'
  s.summary          = 'CHIPageControl is a set of cool animated page controls written in Swift to replace boring UIPageControl.'

  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'

  s.homepage         = 'https://github.com/ChiliLabs/CHIPageControl'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Chili' => 'studio@chi.lv' }
  s.source           = { :git => 'https://github.com/ChiliLabs/CHIPageControl.git', :tag => s.version.to_s }

  s.source_files = 'CHIPageControl/*.swift', 'CHIPageControl/Core/*.swift'

  s.subspec 'Aji' do |aji|
    aji.source_files = 'CHIPageControl/CHIPageControlAji.swift', 'CHIPageControl/Core/*.swift'
  end

  s.subspec 'Aleppo' do |aleppo|
    aleppo.source_files = 'CHIPageControl/CHIPageControlAleppo.swift', 'CHIPageControl/Core/*.swift'
  end

  s.subspec 'Chimayo' do |chimayo|
    chimayo.source_files = 'CHIPageControl/CHIPageControlChimayo.swift', 'CHIPageControl/Core/*.swift'
  end

  s.subspec 'Fresno' do |fresno|
    fresno.source_files = 'CHIPageControl/CHIPageControlFresno.swift', 'CHIPageControl/Core/*.swift'
  end

  s.subspec 'Jalapeno' do |jalapeno|
    jalapeno.source_files = 'CHIPageControl/CHIPageControlJalapeno.swift', 'CHIPageControl/Core/*.swift'
  end

  s.subspec 'Jaloro' do |jaloro|
    jaloro.source_files = 'CHIPageControl/CHIPageControlJaloro.swift', 'CHIPageControl/Core/*.swift'
  end

  s.subspec 'Paprika' do |paprika|
    paprika.source_files = 'CHIPageControl/CHIPageControlPaprika.swift', 'CHIPageControl/Core/*.swift'
  end

  s.subspec 'Puya' do |puya|
    puya.source_files = 'CHIPageControl/CHIPageControlPuya.swift', 'CHIPageControl/Core/*.swift'
  end

end

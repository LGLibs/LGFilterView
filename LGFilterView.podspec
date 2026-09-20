Pod::Spec.new do |s|
    s.name = 'LGFilterView'
    s.version = '1.0.4'
    s.platform = :ios, '6.0'
    s.license = 'MIT'
    s.homepage = 'https://github.com/LGLibs/LGFilterView'
    s.author = { 'Grigorii Lutkov' => 'grigorii@lutkov.dev' }
    s.source = { :git => 'https://github.com/LGLibs/LGFilterView.git', :tag => s.version }
    s.summary = 'View shows and applies different filters in iOS app'
    s.requires_arc = true
    s.source_files = 'LGFilterView/*.{h,m}'
end

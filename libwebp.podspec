Pod::Spec.new do |s|
  s.name             = 'libwebp'
  s.version          = '0.6.0'
  s.summary          = 'A short description of libwebp.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/xilankong/libwebp'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xilankong' => 'young.huang' }
  s.source           = { :git => 'https://github.com/xilankong/libwebp.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'libwebp/Classes/**/*'

end

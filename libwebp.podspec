Pod::Spec.new do |s|
  s.name             = 'libwebp'
  s.version          = '0.6.0'
  s.summary          = 'fork libwebp from google'

  s.description      = <<-DESC
fork libwebp from google
                       DESC

  s.homepage         = 'https://github.com/xilankong/libwebp'

  s.license          = { :type => 'BSD', :file => 'COPYING' }
  s.author           = { 'xilankong' => 'young.huang' }
  s.source           = { :git => 'https://github.com/xilankong/libwebp.git', :tag => s.version.to_s }
  s.requires_arc = false
  s.ios.deployment_target = '8.0'
  s.module_name = 'webp'
  s.header_dir = 'webp'
  s.source_files = 'libwebp/Classes/**/*'
  s.compiler_flags = '-D_THREAD_SAFE'

end

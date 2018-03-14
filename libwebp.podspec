Pod::Spec.new do |s|
  s.name             = 'libwebp'
  s.version          = '0.6.0'
  s.summary          = 'fork libwebp from google'

  s.description      = <<-DESC
fork libwebp from google
                       DESC

  s.homepage         = 'https://github.com/xilankong/libwebp'

  s.license          = { :type => 'BSD', :file => 'COPYING' }
  s.author           = { 'Google Inc.' => 'Google Inc.' }
  s.source           = { :git => 'https://github.com/xilankong/libwebp.git', :tag => s.version.to_s }
  s.requires_arc = false
  s.compiler_flags = '-D_THREAD_SAFE'
  s.platform = :ios

  s.subspec "webp" do |ss|
    ss.name = 'webp'
    ss.header_dir = 'webp'
    ss.source_files = 'libwebp/src/webp/*.h'
  end

  s.subspec "core" do |ss|
    ss.name = 'core'
    ss.source_files = 'libwebp/src/utils/*.{h,c}', 'libwebp/src/dsp/*.{h,c}', 'libwebp/src/enc/*.{h,c}', 'libwebp/src/dec/*.{h,c}'
    ss.dependency 'libwebp/webp'
  end

  s.subspec "utils" do |ss|
    ss.name = 'utils'
    ss.dependency 'libwebp/core'
  end

  s.subspec "dsp" do |ss|
    ss.name = 'dsp'
    ss.dependency 'libwebp/core'
  end

  s.subspec "enc" do |ss|
    ss.name = 'enc'
    ss.dependency 'libwebp/core'
  end

  s.subspec "dec" do |ss|
    ss.name = 'dec'
    ss.dependency 'libwebp/core'
  end

  s.subspec "demux" do |ss|
    ss.name = 'demux'
    ss.source_files = 'libwebp/src/demux/*.{h,c}'
    ss.dependency 'libwebp/core'
  end

  s.subspec "mux" do |ss|
    ss.name = 'mux'
    ss.source_files = 'libwebp/src/mux/*.{h,c}'
    ss.dependency 'libwebp/core'
  end



end

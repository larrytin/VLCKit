Pod::Spec.new do |s|
  s.name      = 'GDMobileVLCKit'
  s.version   = '2.2.1'
  s.summary   = "MobileVLCKit is an Objective-C wrapper for libvlc's external interface on iOS."
  s.homepage  = 'https://github.com/larrytin/VLCKit'
  s.license   = {
    :type => 'LGPLv2.1', :file => 'MobileVLCKit-binary/COPYING.txt'
  }
  s.authors   = 'Pierre d\'Herbemont', { 'Felix Paul Kühne' => 'fkuehne@videolan.org' }
  s.source    = {
    :http => 'http://git.oa.com/qqplayer/mobilevlckit/raw/master/MobileVLCKit-2.2.0-rc1-binary.zip'
  }
  # s.ios.vendored_framework = 'MobileVLCKit-binary/MobileVLCKit.framework'
  s.ios.preserve_paths = 'MobileVLCKit-binary'
  s.public_header_files = 'MobileVLCKit-binary/MobileVLCKit.framework/Headers/*.h'
  s.ios.deployment_target = '7.0'
  s.frameworks = 'QuartzCore', 'CoreText', 'AVFoundation', 'Security', 'CFNetwork', 'AudioToolbox', 'OpenGLES', 'CoreGraphics'
  s.libraries = 'stdc++.6.0.9', 'xml2', 'z', 'bz2', 'iconv'
  s.requires_arc = false
  s.xcconfig = {
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
    'CLANG_CXX_LIBRARY' => 'libc++'
  }
end
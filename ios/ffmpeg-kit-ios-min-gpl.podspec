Pod::Spec.new do |s|
  s.name             = 'ffmpeg-kit-ios-min-gpl'
  s.version          = '6.0'
  s.summary          = 'Custom build of ffmpeg-kit iOS'
  s.description      = 'Built from forked repo'
  s.homepage         = 'https://github.com/arthenica/ffmpeg-kit'
  s.license          = { :type => 'GPL-3.0' }
  s.author           = { 'ARTHENICA' => 'open-source@arthenica.com' }

  s.platform     = :ios, '11.0'
  s.source       = {
        :http => 'https://gitlab.com/qliqpub/qliqflutter.ffmpeg/-/raw/main/ios/ffmpeg-kit-ios-bundle.zip'
   }

  s.vendored_frameworks = 'ffmpeg-kit.xcframework'

    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES',
      'CLANG_MODULES_AUTOLINK' => 'YES'
    }
end

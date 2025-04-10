Pod::Spec.new do |s|
  s.name             = 'ffmpeg-kit-macos-min-gpl'
  s.version          = '6.0'
  s.summary          = 'Custom build of ffmpeg-kit MacOS'
  s.description      = 'Built from forked repo'
  s.homepage         = 'https://github.com/arthenica/ffmpeg-kit'
  s.license          = { :type => 'GPL-3.0' }
  s.author           = { 'ARTHENICA' => 'open-source@arthenica.com' }

  s.platform     = :macos, '10.5'
  s.source       = {
        :http => 'https://gitlab.com/qliqpub/qliqflutter.ffmpeg/-/raw/main/macos/ffmpeg-kit-macos-bundle.zip'
   }

  s.vendored_frameworks = [
    'ffmpegkit.xcframework',
    'libavcodec.xcframework',
    'libavdevice.xcframework',
    'libavfilter.xcframework',
    'libavformat.xcframework',
    'libavutil.xcframework',
    'libswresample.xcframework',
    'libswscale.xcframework'
  ]

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'CLANG_MODULES_AUTOLINK' => 'YES'
  }
end

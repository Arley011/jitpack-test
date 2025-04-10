Pod::Spec.new do |s|
  s.name             = 'ffmpeg-kit-macos-min-gpl'
  s.version          = '6.0'
  s.summary          = 'Custom build of ffmpeg-kit MacOS'
  s.description      = 'Built from forked repo'
  s.homepage         = 'https://github.com/arthenica/ffmpeg-kit'
  s.license          = { :type => 'GPL-3.0' }
  s.author           = { 'ARTHENICA' => 'open-source@arthenica.com' }

  s.platform            = :osx
  s.source       = {
        :http => 'https://gitlab.com/qliqpub/qliqflutter.ffmpeg/-/raw/main/macos/ffmpeg-kit-macos-bundle.zip'
   }

  s.vendored_frameworks = [
    'libavdevice.xcframework',
    'libswresample.xcframework',
    'libswscale.xcframework',
    'libavfilter.xcframework',
    'libavformat.xcframework',
    'libavcodec.xcframework',
    'ffmpegkit.xcframework',
    'libavutil.xcframework'
  ]

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'CLANG_MODULES_AUTOLINK' => 'YES'
  }
end

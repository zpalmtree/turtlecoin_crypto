#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint turtlecoin_crypto.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'turtlecoin_crypto'
  s.version          = '0.0.1'
  s.summary          = 'Dart FFI Addon for TurtleCoin Cryptographic Functions'
  s.description      = <<-DESC
Dart FFI Addon for TurtleCoin Cryptographic Functions
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*', 'Crypto/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64',
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++17'
  }
  s.swift_version = '5.0'
end

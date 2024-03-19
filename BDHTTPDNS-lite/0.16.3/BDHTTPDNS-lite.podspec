Pod::Spec.new do |s|
  s.name = "BDHTTPDNS-lite"
  s.version = "0.16.3"
  s.summary = "BDHTTPDNS-lite is a toB sdk of httpdns, without use ttnet"
  s.authors = {"liuzhe.1939"=>"liuzhe.1939@bytedance.com"}
  s.homepage         = 'https://github.com/volcengine/volcengine-specs'
  s.description = "BDHTTPDNS is a toB sdk of httpdns."
  s.source = { :http => "https://sf3-ttcdn-tos.pstatp.com/obj/volcengine/BDHTTPDNS-lite-ios/#{s.version}/BDHTTPDNS-lite.zip" }

  s.license          = {
    :type => 'Copyright',
    :text => <<-LICENSE
              Bytedance copyright
    LICENSE
  }

  valid_archs = ['armv7','arm64','x86_64']
  s.xcconfig = {
      'VALID_ARCHS' =>  valid_archs.join(' '),
  }

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }

  s.ios.deployment_target = '9.0'
  s.static_framework = true

  s.preserve_paths = "**/*"
  s.source_files = '**/*'
  s.public_header_files = '**/*.h'
  s.vendored_library = 'libBytedanceHTTPDNS-lite.a'
  s.libraries = 'BytedanceHTTPDNS-lite'
  s.frameworks = 'SystemConfiguration', 'CoreTelephony'

end


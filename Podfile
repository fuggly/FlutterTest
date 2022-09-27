platform :ios, '15.0'

source 'https://github.com/CocoaPods/Specs.git'

install! 'cocoapods', :deterministic_uuids => false
use_frameworks!

inhibit_all_warnings!

project 'FlutterTest.xcodeproj'

flutter_application_path = '../modulenamea'
load File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')

pre_install do |installer|
    def installer.verify_no_static_framework_transitive_dependencies; end
end

def allPods
end



target 'FlutterTest' do
  inherit! :search_paths
  install_all_flutter_pods(flutter_application_path)
  allPods
end


post_install do |installer|

  flutter_post_install(installer) if defined?(flutter_post_install)  
end



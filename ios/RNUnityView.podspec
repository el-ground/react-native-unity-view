require 'json'
package = JSON.parse(File.read('../package.json'))

Pod::Spec.new do |s|
  s.name                = "RNUnityView"
  s.version             = package["version"]
  s.summary             = package["description"]
  s.description         = <<-DESC
                            Unity3d as a Component in React Native!
                          DESC
  s.homepage            = "https://github.com/f111fei/react-native-unity-view"
  s.license             = package['license']
  s.authors             = "xzper"
  s.source              = { :git => "https://github.com/f111fei/react-native-unity-view.git", :tag => "v#{s.version}" }
  s.platform            = :ios, "9.0"
  s.source_files        = 'RNUnityView/**/*.{h,m,mm}'
  s.dependency          'React'
  s.xcconfig = { 'USER_HEADER_SEARCH_PATHS' => '"${PROJECT_DIR}/../UnityExport/Classes" "${PROJECT_DIR}/../UnityExport/Classes/Unity" "${PROJECT_DIR}/../UnityExport/Libraries"'}

end

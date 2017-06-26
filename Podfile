source 'https://github.com/CocoaPods/Specs.git'
#source 'https://github.com/gizwits/PodSpecs.git'
#source 'https://git.oschina.net/dantang/PodSpecs.git'

platform :ios, '8.0'
use_frameworks!
inhibit_all_warnings!

target 'WeiLaiKe' do
    pod 'SDCycleScrollView', '~> 1.66'
    pod 'HexColors', '~> 4.0.0'
    pod 'MBProgressHUD', '~> 1.0.0'
    pod 'SVProgressHUD', '~> 2.1.2'
    pod 'Masonry', '~> 1.0.2'
    pod 'AFNetworking', '~> 3.1.0'
    pod 'SHButton', '~> 0.1.9'
    pod 'libextobjc', '~> 0.4.1'
    pod 'MJRefresh', '~> 3.1.12'
    pod 'MJExtension', '~> 3.0.13'
    pod 'DGActivityIndicatorView', '~> 2.1.1'
    pod 'MaterialControls', '~> 1.2.2'
    pod 'IQKeyboardManager', '~> 4.0.10'
    pod 'pop', '~> 1.0.9'
#    pod 'FMDB', '~> 2.6.2'
    pod 'UITableView+FDTemplateLayoutCell', '~> 1.4'
#    pod 'BaiduMapKit', '~> 3.3.1'
#    pod 'WechatOpenSDK'
    pod 'Bugly'
    pod 'WebViewJavascriptBridge'
#    pod 'RNCachingURLProtocol'
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '2.3'
            config.build_settings['ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES'] = 'NO'
            config.build_settings['ARCHS'] = 'armv7 armv7s arm64'
            config.build_settings['VALID_ARCHS'] = 'armv6 armv7 armv7s arm64'
            config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
        end
    end
end

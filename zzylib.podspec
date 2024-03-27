 

Pod::Spec.new do |s|
  s.name             = 'zzylib'
  s.version          = '0.1.4'
  s.summary          = 'A short description of zzylib.'

 

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/zhengzeyou/zzylib'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yunbo' => '329604646@qq.com' }
  s.source           = { :git => 'https://github.com/zhengzeyou/zzylib.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.source_files = 'zzylib/Classes/**/*'

  s.dependency 'CTMediator'
  s.dependency 'RxSwift'
  s.dependency 'RxCocoa'
  s.dependency 'MJRefresh'
  

end

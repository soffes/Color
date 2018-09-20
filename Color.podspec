Pod::Spec.new do |spec|
  spec.name = 'Color'
  spec.version = '0.1.1'
  spec.authors = {'Sam Soffes' => 'sam@soff.es'}
  spec.homepage = 'https://github.com/soffes/Color'
  spec.summary = 'Color utilities'
  spec.description = 'Color utilities in pure Swift.'
  spec.source = {:git => 'https://github.com/soffes/Color.git', :tag => "v#{spec.version}"}
  spec.license = { :type => 'MIT', :file => 'LICENSE' }

  spec.osx.deployment_target = '10.10'
  spec.ios.deployment_target = '8.0'
  spec.watchos.deployment_target = '2.0'
  spec.tvos.deployment_target = '9.0'

  spec.source_files = 'Sources/Color/**/*.{swift}'
end

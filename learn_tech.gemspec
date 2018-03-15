
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "learn_tech/version"

Gem::Specification.new do |spec|
  spec.name          = "learn_tech"
  spec.version       = LearnTech::VERSION
  spec.authors       = ["Pruthvi Raj Reddy Chukkannagari"]
  spec.email         = ["xxxx.yyy@gmail.com"]

  spec.summary       = 'My first CLI tool with thor'
  spec.description   = 'Learn Tech Simple CLI allows to choose a tech stream and topic in specific and returns few learning resources'
  spec.homepage      = 'http://github.com/DevAuto/Learn-Tech'
  spec.license       = "MIT"

  spec.platform = Gem::Platform::RUBY
  spec.files = Dir['bin/*', 'lib/**/*.rb', 'lib/**/*.slim', 'Gemfile', 'README.md']
  spec.require_paths << 'lib'
  spec.bindir = 'bin'
  spec.executables = ['learn_tech']

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_runtime_dependency 'activemodel', '~> 5.1', '>= 5.1.3'
  spec.add_runtime_dependency 'colorize', '~> 0.7', '>= 0.7.3'
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "thor", "~> 0.20"
end

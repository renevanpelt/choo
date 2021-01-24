
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'choo/version'

Gem::Specification.new do |s|
  s.name        = 'choo'
  s.version     = Choo::VERSION
  s.date        = '2021-01-23'
  s.summary     = "Choo choo!"
  s.description = "A ruby web framework that allows developers to create application that use CQRS and event storing to manage application state"
  s.authors     = ["Rene van Pelt"]
  s.email       = 'rene@catadesk.com'
  
  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake"
  s.add_dependency "dry-cli"
  
  
  s.license       = 'MIT'
  
  s.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.executables   = ["choo"]
  s.require_paths = ["lib"]
  
end
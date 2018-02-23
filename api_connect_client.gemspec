
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "api_connect_client"

Gem::Specification.new do |spec|
  spec.name          = "api_connect_client"
  spec.version       = ApiConnectClient::VERSION
  spec.authors       = ["Carlos Fiebig"]
  spec.email         = ["cffiebigc@gmail.com"]

  spec.summary       = 'Client to interact with IBM Api Connect'
  spec.description   = 'Manager and Developer from IBM Api Connect to interact with te developer portal REST APIs'
  spec.homepage      = "https://github.com/cffiebigc/api-connect-client"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", '~> 0.11.3'
  spec.add_development_dependency "webmock", '~> 3.1'
  spec.add_development_dependency "vcr", '~> 3.0'
  spec.add_development_dependency "dotenv", '~> 2.2'
end

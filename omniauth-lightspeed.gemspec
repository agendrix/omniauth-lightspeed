require File.expand_path('../lib/omniauth/lightspeed/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mathieu Allaire", "Mathieu Blanchette", "Ryan Bigg"]
  gem.email         = ["dev@agendrix.com"]
  gem.description   = "OmniAuth strategy for Lightspeed Retail."
  gem.summary       = "OmniAuth strategy for Lightspeed Retail."
  gem.homepage      = "https://github.com/agendrix/omniauth-lightspeed"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'omniauth-lightspeed'
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Lightspeed::VERSION

  gem.add_dependency "omniauth", "~> 1"
  gem.add_dependency "omniauth-oauth2", "~> 1"

  gem.add_development_dependency "rspec", ">= 0"
end

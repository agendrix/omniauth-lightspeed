# -*- encoding: utf-8 -*-
# stub: omniauth-lightspeed 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "omniauth-lightspeed"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ryan Bigg"]
  s.date = "2016-11-21"
  s.description = "OmniAuth strategy for Lightspeed."
  s.email = ["git@ryanbigg.com"]
  s.files = [".gitignore", ".rspec", ".travis.yml", "Gemfile", "README.md", "Rakefile", "bin/console", "bin/setup", "lib/omniauth/lightspeed.rb", "lib/omniauth/lightspeed/strategy.rb", "lib/omniauth/lightspeed/version.rb", "omniauth-lightspeed.gemspec"]
  s.homepage = "https://github.com/radar/omniauth-lightspeed"
  s.rubygems_version = "2.5.1"
  s.summary = "OmniAuth strategy for Lightspeed."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<omniauth-oauth2>, [">= 0"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.10"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<omniauth-oauth2>, [">= 0"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.10"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<omniauth-oauth2>, [">= 0"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.10"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end

# -*- encoding: utf-8 -*-
# stub: zilch-authorisation 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "zilch-authorisation".freeze
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Rob Yurkowski".freeze, "Philip Arndt".freeze]
  s.date = "2015-05-06"
  s.description = "A zero-dependency authorisation stub".freeze
  s.email = ["rob@yurkowski.net".freeze, "p@arndt.io".freeze]
  s.homepage = "https://github.com/robyurkowski/zilch-authorisation".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.11".freeze
  s.summary = "A zero-dependency authorisation stub".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    else
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
  end
end

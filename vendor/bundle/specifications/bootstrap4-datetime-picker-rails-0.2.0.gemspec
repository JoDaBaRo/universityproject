# -*- encoding: utf-8 -*-
# stub: bootstrap4-datetime-picker-rails 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "bootstrap4-datetime-picker-rails".freeze
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Kyle Fagan".freeze]
  s.date = "2018-10-02"
  s.description = "Rails integration for Tempus Dominus Bootstrap 4 datetime picker".freeze
  s.email = ["kfagan@mitre.org".freeze]
  s.homepage = "https://github.com/Bialogs/bootstrap4-datetime-picker-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Rails integration for Tempus Dominus Bootstrap 4 datetime picker".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<momentjs-rails>.freeze, [">= 2.10.5", "~> 2.10"])
      s.add_runtime_dependency(%q<jquery-rails>.freeze, [">= 4.2.0", "~> 4.2"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 1.16.0", "~> 1.16"])
      s.add_development_dependency(%q<json>.freeze, [">= 2.1.0", "~> 2.1"])
      s.add_development_dependency(%q<rake>.freeze, [">= 12.3.0", "~> 12.3"])
    else
      s.add_dependency(%q<momentjs-rails>.freeze, [">= 2.10.5", "~> 2.10"])
      s.add_dependency(%q<jquery-rails>.freeze, [">= 4.2.0", "~> 4.2"])
      s.add_dependency(%q<bundler>.freeze, [">= 1.16.0", "~> 1.16"])
      s.add_dependency(%q<json>.freeze, [">= 2.1.0", "~> 2.1"])
      s.add_dependency(%q<rake>.freeze, [">= 12.3.0", "~> 12.3"])
    end
  else
    s.add_dependency(%q<momentjs-rails>.freeze, [">= 2.10.5", "~> 2.10"])
    s.add_dependency(%q<jquery-rails>.freeze, [">= 4.2.0", "~> 4.2"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.16.0", "~> 1.16"])
    s.add_dependency(%q<json>.freeze, [">= 2.1.0", "~> 2.1"])
    s.add_dependency(%q<rake>.freeze, [">= 12.3.0", "~> 12.3"])
  end
end

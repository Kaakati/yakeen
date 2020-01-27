Gem::Specification.new do |s|
  s.name = %q{yakeen}
  s.version = "0.0.3"
  s.date = %q{2020-01-27}
  s.summary = %q{Yakeen Rowad Gem | Elm}
  s.description = "Yaqeen Rowad, Immediate verification of individuals’ data with the official government records in Saudi Arabia."
  s.authors     = ["Mohamad Kaakati"]
  s.email       = 'm@kaakati.me'
  s.required_ruby_version = '>= 2.6'
  s.homepage    =
      'https://github.com/Kaakati/yakeen'
  s.license       = 'MIT'

  s.files = Dir["{lib}/**/*"] #+ ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.add_dependency "httparty", "~> 0.17.3"
end
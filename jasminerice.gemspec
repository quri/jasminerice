# Provide a simple gemspec so you can easily use your
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name        = "jasminerice"
  s.version     = "0.1.1"
  s.authors     = ["Brad Phelan", "Brett Giles"]
  s.summary     = "Pain free coffeescript unit testing for Rails 4 using jasmine"
  s.description = "Full support for the Rails 4 asset pipeline when bdd'ing your coffeescript or javascript using jasmine"

  s.platform    = Gem::Platform::RUBY
  s.files       = Dir["{app,config,lib,vendor}/**/*"] + ["MIT.LICENSE", "README.md"]

  s.add_dependency 'coffee-rails'
end

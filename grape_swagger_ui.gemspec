$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "grape_swagger_ui/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "grape_swagger_ui"
  s.version     = GrapeSwaggerUi::VERSION
  s.authors     = ["Ismail Akram"]
  s.email       = ["rubyonrails3@gmail.com"]
  s.homepage    = "https://github.com/rubyonrails3/grape-swagger-ui"
  s.summary     = "Swagger UI for Grapes in rails."
  s.description = "Swagger UI for Grapes in rails. this is using old version of swagger UI, as there is some bug that not let display model schema in latest version and also latest swagger-ui do not works great with grape-swagger"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "< 6"
end

require_relative 'lib/cats_breeds/version'

Gem::Specification.new do |spec|
  spec.name          = "cats_breeds"
  spec.version       = CatsBreeds::VERSION
  spec.authors       = ["g-man"]
  spec.email         = ["chemist2ever@gmail.com"]
  
  spec.summary       = "Cats_Breeds"
  spec.description   = "Learn more about cats_breeds to provide more details for the to be owner to fit their life style "


  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

 
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end

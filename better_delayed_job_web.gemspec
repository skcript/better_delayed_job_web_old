Gem::Specification.new do |gem|
  gem.name        = "better_delayed_job_web"
  gem.version     = "1.3.4"
  gem.author      = "Skcript"
  gem.email       = "bello@skcript.com"
  gem.homepage    = "https://github.com/skcript/better_delayed_job_web"
  gem.summary     = "Web better interface for delayed_job"
  gem.description = "Probably the best interface for Delayed Job"
  gem.license     = "MIT"

  gem.executables = ["better_delayed_job_web"]

  gem.files = [
    "Gemfile",
    "LICENSE.txt",
    "README.markdown",
    "Rakefile",
    "better_delayed_job_web.gemspec"
  ] + %x{ git ls-files }.split("\n").select { |d| d =~ %r{^(lib|test|bin)} }

  gem.extra_rdoc_files = [
    "LICENSE.txt",
    "README.markdown"
  ]

  gem.add_runtime_dependency "sinatra",      [">= 1.4.4"]
  gem.add_runtime_dependency "activerecord", ["> 3.0.0"]
  gem.add_runtime_dependency "delayed_job",  ["> 2.0.3"]

  gem.add_development_dependency "minitest",  ["= 5.5.0"]
  gem.add_development_dependency "rack-test", ["~> 0.6"]
  gem.add_development_dependency "rails",     ["~> 4.0"]
end

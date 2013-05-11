# -*- encoding: utf-8 -*-
 
Gem::Specification.new do |s|
  s.name        = 'gunner'
  s.version     = '0.0.1'
  s.summary     = 'A gist runner'
  s.description = 'Execute gists from the command line'

  s.required_ruby_version     = '>= 1.9.3'
  s.required_rubygems_version = ">= 1.8.11"
  s.license     = 'MIT'

  s.author            = 'Matthew Higgins'
  s.email             = 'developer@matthewhiggins.com'
  s.homepage          = 'http://github.com/matthuhiggins/gunner'

  s.extra_rdoc_files = ['README.md']
  s.files = Dir['{lib,test}/**/*.rb']
end

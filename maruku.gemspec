# encoding: utf-8

$:.push File.expand_path("../lib", __FILE__)  
require "maruku/version"

Gem::Specification.new do |s|
  s.name = 'maruku'
  s.version = MaRuKu::Version
  s.summary = "Maruku is a Markdown-superset interpreter written in Ruby."
  s.description = %{Maruku is a Markdown interpreter in Ruby.
        It features native export to HTML and PDF (via Latex). The
        output is really beautiful!
        }
  s.license = 'GPL-2'
  s.authors = ["Andrea Censi", "Nathan Weizenbaum"]
  s.email = "ben@benhollis.net"
  s.homepage = 'http://maruku.rubyforge.org'

  s.files = Dir['lib/**/*.rb'] + Dir['lib/*.rb'] + 
        Dir['docs/*.md'] +      Dir['docs/*.html'] +
        Dir['spec/**/*.rb'] + Dir['spec/**/*.md'] +
          Dir['data/*'] + Dir['bin/*'] + ['Rakefile']

  s.bindir = 'bin'
  s.executables = ['maruku','marutex']

  s.require_path = 'lib'

  s.add_dependency('nokogiri', '~> 1.5', '>= 1.5.6')
  s.add_dependency('syntax', '>= 1.0.0')
  s.add_dependency('itextomml', '~> 1.4.10')

  s.add_development_dependency('rake', '~> 0.9.2')
  s.add_development_dependency('rspec', '~> 2.12.0')
  s.add_development_dependency('yard', '~> 0.7.2')
  
  s.has_rdoc = true
  s.require_path = "lib"
end

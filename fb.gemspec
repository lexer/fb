# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fb/version"

spec = Gem::Specification.new do |s|
  s.name = "fb"
  s.version = Fb::VERSION
  s.date = "2011-08-08"
  s.summary = "Firebird and Interbase driver"
  s.requirements = "Firebird client library fbclient.dll, libfbclient.so or Firebird.framework."
  s.author = "Brent Rowland"
  s.email = "rowland@rowlandresearch.com"
  s.homepage = "http://github.com/rowland/fb"
  s.rubyforge_project = "fblib"
  s.has_rdoc = true
  s.extra_rdoc_files = ['README']
  s.rdoc_options << '--title' << 'Fb -- Ruby Firebird Extension' << '--main' << 'README' << '-x' << 'test'

  s.platform = case RUBY_PLATFORM
    when /win32/ then Gem::Platform::WIN32
  else
    Gem::Platform::RUBY
  end
  s.extensions = ['extconf.rb'] if s.platform == Gem::Platform::RUBY
  
  s.rubyforge_project = "fb"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]  
end



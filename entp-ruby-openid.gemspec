require 'rubygems'

SPEC = Gem::Specification.new do |s|
  s.name = `cat admin/library-name`.strip
#  s.version = `darcs changes --tags= | awk '$1 == "tagged" { print $2 }' | head -n 1`.strip
  s.version = '2.2'
  s.author = 'ENTP'
  s.email = 'courtenay@entp.com'
  s.homepage = 'http://github.com/entp/ruby-openid'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A library for consuming and serving OpenID identities. Forked from the unmaintained JanRain version.'
  files = Dir.glob("{examples,lib,test}/**/*")
  files << 'NOTICE' << 'CHANGELOG'
  s.files = files.delete_if {|f| f.include?('_darcs') || f.include?('admin')}
  s.require_path = 'lib'
  s.autorequire = 'openid'
  s.test_file = 'admin/runtests.rb'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README','INSTALL','LICENSE','UPGRADE']
  s.rdoc_options << '--main' << 'README'
end

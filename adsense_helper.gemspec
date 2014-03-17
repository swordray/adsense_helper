$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require 'adsense_helper/version'

Gem::Specification.new do |s|
  s.name              = "adsense_helper"
  s.version           = AdsenseHelper::VERSION
  s.platform          = Gem::Platform::RUBY
  s.author            = ["Jianqiu Xiao"]
  s.email             = ["swordray@gmail.com"]
  s.homepage          = "https://github.com/swordray/adsense_helper"
  s.summary           = "Helper for Google Adsense Content"
  s.description       = "An elegant way to write Google Adsense Code."
  s.license           = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.required_ruby_version = "~> 2.0"
end

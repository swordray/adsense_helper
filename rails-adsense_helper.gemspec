$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require 'rails-adsense_helper/version'

Gem::Specification.new do |s|
  s.name              = "rails-adsense_helper"
  s.version           = RailsAdsenseHelper::VERSION
  s.platform          = Gem::Platform::RUBY
  s.author            = ["Jianqiu Xiao"]
  s.email             = ["swordray@gmail.com"]
  s.homepage          = "https://github.com/swordray/rails-adsense_helper"
  s.summary           = "ActionView Helper for Google Adsense Content."
  s.description       = "Thanks to ihaveu.com team."
  s.license           = "MIT"

  # s.rubyforge_project = ""

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # s.requirements << ""
  s.required_ruby_version = "~> 2.0"

  s.add_dependency 'rails'

  # s.add_development_dependency('', '')
end

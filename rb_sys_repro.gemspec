# frozen_string_literal: true

require_relative "lib/rb_sys_repro/version"

Gem::Specification.new do |spec|
  spec.name = "rb_sys_repro"
  spec.version = RbSysRepro::VERSION
  spec.authors = ["Hayden Ball"]
  spec.email = ["hayden@playerdata.com"]

  spec.summary = "Testy"
  spec.description = "Testy test test"
  spec.homepage = "https://github.com/ball-hayden/rb-sys-repro"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"
  spec.required_rubygems_version = ">= 3.3.11"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions = ["ext/rb_sys_repro/Cargo.toml"]
end

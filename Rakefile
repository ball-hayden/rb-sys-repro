# frozen_string_literal: true

require "bundler/gem_tasks"
require "rb_sys/extensiontask"
require "rspec/core/rake_task"
require "rubocop/rake_task"

RSpec::Core::RakeTask.new(spec: %i[compile:dev])
RuboCop::RakeTask.new

GEMSPEC = Gem::Specification.load("rb_sys_repro.gemspec")

RbSys::ExtensionTask.new("rb_sys_repro", GEMSPEC) do |ext|
  ext.lib_dir = "lib/rb_sys_repro"
end

task build: %i[compile]
task default: %i[compile spec rubocop]

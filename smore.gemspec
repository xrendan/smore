# frozen_string_literal: true

require_relative "lib/smore/version"

Gem::Specification.new do |spec|
  spec.name = "smore"
  spec.version = Smore::VERSION
  spec.authors = ["xrendan"]
  spec.email = ["brendan@brendansamek.com"]

  spec.summary = "smore brings tools to raix and roast for a delicious gooey concoction"
  spec.homepage = "https://github.com/xrendan/smore"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/xrendan/smore/issues",
    "changelog_uri" => "https://github.com/xrendan/smore/releases",
    "source_code_uri" => "https://github.com/xrendan/smore",
    "homepage_uri" => spec.homepage,
    "rubygems_mfa_required" => "true"
  }

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir.glob(%w[LICENSE.txt README.md {exe,lib}/**/*]).reject { |f| File.directory?(f) }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Runtime dependencies
  spec.add_dependency "thor", "~> 1.2"
end

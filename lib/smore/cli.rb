# frozen_string_literal: true

require "thor"

module Smore
  class CLI < Thor
    extend ThorExt::Start

    map %w[-v --version] => "version"

    desc "version", "Display smore version", hide: true
    def version
      say "smore/#{VERSION} #{RUBY_DESCRIPTION}"
    end
  end
end

require "the_hyphenator/version"

module TheHyphenator
  extend ActiveSupport::Concern

  class << self
    alias_method :original_normalize_path, :normalize_path

    def normalize_path(path)
      original_normalize_path(hyphenate_path(path))
    end

    def hyphenate_path(path)
      path.split('/').map do |token|
        # ignore params
        if token.start_with?(':')
          token
        else
          token.tr('_', '-')
        end
      end.join('/')
    end
  end
end

ActionDispatch::Journey::Router::Utils.include(TheHyphenator)

require "the_hyphenator/version"
require "active_support"
require "action_dispatch"

module TheHyphenator
  extend ActiveSupport::Concern

  included do
    class << self
      alias_method :original_normalize_path, :normalize_path

      def normalize_path(path, format)
        original_normalize_path(hyphenate_path(path), format)
      end

      def hyphenate_path(path)
        path.split('/').map do |token|
          # ignore params
          if token.start_with?(':', '*')
            token
          else
            token.tr('_', '-')
          end
        end.join('/')
      end
    end
  end
end

ActionDispatch::Routing::Mapper::Mapping.include(TheHyphenator)

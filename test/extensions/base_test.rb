# typed: true
# frozen_string_literal: true

require "test_helper"

module RubyLsp
  module Extensions
    class BaseTest < Minitest::Test
      def test_registering_an_extension_invokes_activate_on_initialized
        extension = Class.new(Base) do
          class << self
            attr_reader :activated

            def activate
              @activated = true
            end
          end
        end

        Executor.new(RubyLsp::Store.new).execute({ method: "initialized" })
        assert_predicate(extension, :activated)
      end

      def test_extensions_are_automatically_tracked
        extension = Class.new(Base) do
          class << self
            def activate; end
          end
        end

        assert_includes(Base.extensions, extension)
      end

      def test_load_extensions_returns_errors
        Class.new(Base) do
          class << self
            def activate
              raise StandardError, "Failed to activate"
            end
          end
        end

        error = T.must(Base.load_extensions.first)
        assert_instance_of(StandardError, error)
        assert_equal("Failed to activate", error.message)
      end
    end
  end
end

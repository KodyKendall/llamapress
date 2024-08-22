# frozen_string_literal: true

require_relative "llama_bot/version"

require 'llama_bot/railtie' if defined?(Rails)
require 'llama_bot/engine' if defined?(Rails)

module LlamaBot
  class Error < StandardError; end
  # Your code goes here...
end

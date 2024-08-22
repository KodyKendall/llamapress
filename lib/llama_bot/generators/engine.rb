# lib/llama_bot/engine.rb
module LlamaBot
    class Engine < ::Rails::Engine
      isolate_namespace LlamaBot
  
      initializer "llama_bot.load_helpers" do
        ActiveSupport.on_load(:action_controller) do
          include LlamaBot::ApplicationHelper
        end
      end
    end
  end
  
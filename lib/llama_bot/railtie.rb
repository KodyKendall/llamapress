# lib/llama_bot/railtie.rb
module LlamaBot
    class Railtie < ::Rails::Railtie
      initializer 'llama_bot.configure_rails_initialization' do
        # Custom initialization code here
        puts "LlamaBot is initializing..."
      end
  
      rake_tasks do
        load 'llama_bot/tasks/llama_bot_tasks.rake'
      end
  
      generators do
        require "llama_bot/generators/install_generator"
      end
    end
  end
  
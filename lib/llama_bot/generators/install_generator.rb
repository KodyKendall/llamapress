# lib/llama_bot/generators/install_generator.rb
module LlamaBot
    module Generators
      class InstallGenerator < Rails::Generators::Base
        source_root File.expand_path('templates', __dir__)
  
        def copy_initializer
          template 'llama_bot_initializer.rb', 'config/initializers/llama_bot.rb'
        end
  
        def copy_migration
          rake 'railties:install:migrations'
        end
  
        def show_readme
          readme 'README' if behavior == :invoke
        end
      end
    end
  end
  
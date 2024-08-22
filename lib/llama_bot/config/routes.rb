# lib/llama_bot/config/routes.rb
LlamaBot::Engine.routes.draw do
    resources :assistants, only: [:index, :create]
    # Additional routes for LlamaBot
  end
  
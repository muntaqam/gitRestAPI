# config/routes.rb
Rails.application.routes.draw do
  get '/repos/:owner/:repo', to: 'repos#show'
end

Rails.application.routes.draw do
  get 'wrapper/wrap'
  root to: 'wrapper#home'
  get '/wrap', to: 'wrapper#wrap', as: :wrap
end

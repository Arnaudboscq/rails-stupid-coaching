Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/answer', to: 'coaching#answer', as: 'answer'
  get '/ask', to: 'coaching#ask', as: 'ask'
  root to: 'coaching#home'
end

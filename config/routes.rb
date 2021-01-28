Rails.application.routes.draw do
  devise_for :officers, controllers: { sessions: 'officers/sessions' }
  devise_scope :officer do
    get 'sign_in', to: 'devise/sessions#new'
    get '/officers/sign_out' => 'devise/sessions#destroy'
  end
  resources :homes
root to: 'homes#index'
end

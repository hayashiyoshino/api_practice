Rails.application.routes.draw do
  root to: "homes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      resources :posts
      resources :comments, only: [:show]
    end
	end
  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :searches, only: [:index]
    end
	end
	resources :comments, only: [:index]
end

Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
   # root :to => "wedding#index"
    resources :wedding
    resources :guest do 
      collection do
        post :import
      end
    end
    resources :about
	end
end

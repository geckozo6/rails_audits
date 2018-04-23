Rails.application.routes.draw do
    root 'samples#index'

  resources :auditors

	resources :samples

	resources :pieces

	resources :equipment

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

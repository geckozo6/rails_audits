Rails.application.routes.draw do
 # get 'auditors/index'

  #get 'auditors/show'

  #get 'auditors/destroy'

  get 'auditor/index'

  #get 'auditor/show'

  #get 'auditor/destroy'

  #get 'auditor/new'

  #get 'auditor/edit'

  #get 'auditors/new'

  #get 'auditors/edit'

  resources :auditors

	resources :samples
  
  #get 'auditor/edit'
  
  #get 'auditor/:id/edit', to: 'auditor#edit', as: :edit_auditor

  #get 'auditor/list'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

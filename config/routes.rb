Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do 
    resources :projects
  end

  resources :projects do 
    resources :project_statuses
  end

end

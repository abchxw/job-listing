Rails.application.routes.draw do
  devise_for :users, controllers: { session: 'users/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :jobs do
    resources :resumes
    collection do
      get :search
    end
  end
  namespace :admin do
     resources :jobs do
       member do
         post :publish
         post :hide
       end

       resources :resumes
     end
  end
  resources :jobs do
    put :favorite, on: :member

  end
  resources :favorite do
    
  end

  resources :welcome do

  end
  root 'welcome#index'
end

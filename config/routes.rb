Rails.application.routes.draw do
  #admin側
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :users, only:[:index, :show, :edit, :update]
    resources :books, only:[:index, :show]
    resources :courses, only:[:index, :show, :edit, :create, :update, :destroy]
  end

  #user側
  devise_for :users, :controllers => {:sessions => 'public/sessions',
    :registrations => 'public/registrations',
    :passwords => 'public/passwords'
  }
  root 'public/homes#top'
  get '/about' => 'public/homes#about'
  resources :users, only:[:show, :edit, :update] do
    collection do
      get 'quit'
      patch 'out'
    end
  end
  resources :courses, only:[:index, :show] do
    resources :books, only:[:new, :create, :index, :show] do
      collection do
        post 'confirm'
        get 'thanx'
      end
    end
  end
  resources :contacts, only:[:index] do
    collection do
      post 'confirm'
      get 'done'
    end
  end
end
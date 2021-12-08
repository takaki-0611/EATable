Rails.application.routes.draw do
  #admin側
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :users, only:[:index, :show, :edit, :update]
    resources :books, only:[:index, :show]
    resources :courses, only:[:index, :show, :edit, :create, :update, :destroy]
    

  #user側
  devise_for :users, :controllers => {:sessions => 'users/sessions',
    :registrations => 'users/registrations',
    :passwords => 'users/passwords'
  }
  root 'public/homes#top'
  get 'home/about' => 'public/homes#about'
  resources :users, only:[:show, :edit, :update] do
    collection do
      get 'quit'
      patch 'out'
    end
  end
  resources :books, only:[:new, :create, :index, :show] do
    collection do
      post 'confirm'
      get 'thanx'
    end
  end
  resources :courses, only:[:index, :show]
  resources :contacts, only:[:index] do
    collection do
      post 'confirm'
      get 'done'
    end
  end
end
Rails.application.routes.draw do
  root to: 'products#index'

  devise_for :users
  devise_scope :user do
    get  "upgrade",   to: 'users/registrations#upgrade',   as: 'upgrade_user'
    post "upgrading", to: 'users/registrations#upgrading', as: 'upgrading_user'
  end

  resources :products, except: :destroy
end

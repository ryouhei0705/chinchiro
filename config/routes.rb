Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: "users/registrations",
        confirmations: "users/confirmations",
        #omniauth_callbacks: "users/omniauth_callbacks",
        passwords: "users/passwords",
        unlocks: "users/unlocks"
      }

  root to: "home#top"

  get 'top' => "home#top"
  get 'input' => "home#input"
  post "home/:id/add" => "home#add"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  concern :sectional do
    resources :sections
  end

  resources :game_systems do
    concerns :sectional
    resources :character_sheets
  end

  resources :character_sheets do
    concerns :sectional
  end

  resources :characters do
    concerns :sectional
  end

  resources :sections do
    resources :traits
  end
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :game_systems do
    resources :character_sheets, except: [:index, :show]
  end

  resources :characters, except: [:index]

  resources :sections, except: [:index] do
    resources :traits, except: [:index, :show]
  end
end

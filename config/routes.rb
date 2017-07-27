Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :game_systems do
    resources :characters, except: [:index]
  end

  resources :sections, except: [:index] do
    resources :traits, except: [:index, :show]
  end
end

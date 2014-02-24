Grokkie::Application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  root to: "grokkies#index"

  resources :categories, only:[:show] do
    resources :skills, only:[:show]
  end

  resources :roadmaps do
    resources :comments, :resources
  end
end

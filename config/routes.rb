Grokkie::Application.routes.draw do
  devise_for :users
  root to: "grokkies#index"

  resources :categories, only:[:show] do
    resources :skills, only:[:show]
  end

  resources :roadmaps do
    resources :comments, :resources
  end
end

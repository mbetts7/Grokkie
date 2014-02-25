Grokkie::Application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  root to: "grokkies#index"

  resources :profiles, only:[:show, :edit, :update]

  resources :categories, only:[:show] do
    resources :skills, only:[:show]
  end

  resources :roadmaps do
  	member do
  		put "vote", to: "roadmaps#upvote"
  	end
    resources :comments, :resources
  end
end

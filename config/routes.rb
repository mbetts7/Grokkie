Grokkie::Application.routes.draw do
  root to: "grokkies#index"
  resources :grokkie, only:[:index] do
    resources :categories, only:[:show] do
      resources :skills, only:[:show]
    end
  end

  resources :roadmaps do
    resources :comments, :resources
  end
end

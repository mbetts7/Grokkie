Grokkie::Application.routes.draw do
  get "samples/index"
  root to: "grokkies#index"

    resources :categories, only:[:show] do
      resources :skills, only:[:show]
    end

  resources :roadmaps do
    resources :comments, :resources
  end
end

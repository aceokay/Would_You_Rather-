Rails.application.routes.draw do
  resources :questions do
    resources :answers
  end

  resources :answers do
    resources :votes
  end
end

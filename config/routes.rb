Rails.application.routes.draw do
  resources :heiheis do
    collection do
      post :confirm
    end
  end
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      scope :users, defaults: { format: :json } do
        post :signup, to: 'users#signup'
      end

      scope :auth, defaults: { format: :json } do
        post '/login', to: 'auth#login'
      end

      resources :contents, only: %i[index create destroy update]
    end
  end
end

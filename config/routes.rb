Rails.application.routes.draw do
  # root to: 'api/v1/posts#index'
  namespace 'api' do
    namespace 'v1' do
      resources :posts
      # get 'load', to: 'posts#load'
    end
  end
end

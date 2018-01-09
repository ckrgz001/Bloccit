Rails.application.routes.draw do
  default_url_options :host => 'localhost'
  resources :topics do
    resources :posts, except: [:index]
  end

  resources :posts, only: [] do
        resources :comments, only: [:create, :destroy]
        post '/up-vote' => 'votes#up_vote', as: :up_vote
        post '/down-vote' => 'votes#down_vote', as: :down_vote

        resources :favorites, only: [:create, :destroy]
    end

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]


  get 'about' => 'welcome#about'
  get 'contact' => 'welcome#contact'
  get 'FAQ' => 'welcome#FAQ'

  root 'welcome#index'
end

Rails.application.routes.draw do

  resources :topics do
    resources :posts, except: [:index]
    resources :sponsored_posts, except: [:index]
  end

  get 'about' => 'welcome#about'
  get 'contact' => 'welcome#contact'
  get 'FAQ' => 'welcome#FAQ'

  root 'welcome#index'
end

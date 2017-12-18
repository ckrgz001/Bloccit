Rails.application.routes.draw do
resources :advertisements

resources :posts

  get 'about' => 'welcome#about'

  get 'contact' => 'welcome#contact'

  get 'FAQ' => 'welcome#FAQ'

  root 'welcome#index'
end

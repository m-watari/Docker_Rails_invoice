Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users
  resources :invoice_details
  resources :invoices
  resources :members
  resources :groups, except: [:destroy]
  # PDF出力
  get '/pdf-download/:id', to: 'pdf#download', as: 'pdf_download', :format => 'pdf'
  get 'pdf-show/:id' => 'pdf#show', as: 'pdf_show', :format => 'pdf'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

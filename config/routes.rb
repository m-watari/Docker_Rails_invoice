Rails.application.routes.draw do
  resources :invoice_details
  resources :invoices
  resources :members
  # PDF出力
  get '/pdf-download', to: 'pdf#download', as: 'pdf_download', :format => 'pdf'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  root 'pages#home'
  
  get 'about' , to: 'pages#about'

  get 'careers' , to: 'pages#careers'

  get 'client-stories', to: 'pages#client_stories'

  get '/support/faq' , to: 'pages#faq'

  get 'invoice-factoring' , to: 'pages#invoice_factoring'

  get 'line-of-credit' , to: 'pages#line_of_credit'

  get 'partner' , to: 'pages#partner'

  get 'press' , to: 'pages#press'

  get '/terms/privacy-policy' , to: 'pages#privacy'

  get 'support' , to: 'pages#support'

  get 'terms' , to: 'pages#terms'

  devise_for :users,
             path: '',
             path_names: {sign_in: 'login', sign_out: 'logout', edit: 'edit', sign_up: 'register'},
             controllers: {registrations: 'registrations'}
  
  resources :companies, except: [:edit] do
    member do
      get 'funding'
      get 'info'
      get 'photo_upload'
      get 'contact'
      get 'edit'
    end
  end
end

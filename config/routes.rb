Rails.application.routes.draw do
  root to: 'static_pages#home'

  get 'code_of_conduct' => 'static_pages#code_of_conduct'
  get 'details' => 'static_pages#details'

  resource :donations, only: [:show, :create]

  get '/scholarships', to: redirect("https://docs.google.com/forms/d/1UUp6415niIzBoMxmhk6mxRfmgCfO-1ioc8oEZaNCt4o")
end

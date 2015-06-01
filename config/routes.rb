Rails.application.routes.draw do
  resource :donations, only: [:show, :create]
end

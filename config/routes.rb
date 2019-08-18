Rails.application.routes.draw do

  get "index", to: "static#index"
  get "about", to: "static#about"
  get "contact", to: "static#contact"
  root "static#index"

end

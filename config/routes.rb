Rails.application.routes.draw do

  # get 'site/index'

  # get 'site/about'

  get 'site/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'site#index', as: "site_index"
  get '/about' => 'site#about', as: "site_about"
  # get '/contact' => 'site#contact', as: "site_contact"

  resources :ogp, :only => [:show]

end

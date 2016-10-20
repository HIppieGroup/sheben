Rails.application.routes.draw do
  	namespace :admin do
  		resource 	:pages
  		resources	:items
  		resources	:services
  		get '', to: 'pages#show', as: '/'
	end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'shows#index'
 
end

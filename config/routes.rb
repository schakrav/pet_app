Qats::Application.routes.draw do
 

   root :to => 'pages#home'

match '/about', :to => 'pages#about'
match '/contact', :to => 'pages#contact'
match '/privacy', :to => 'pages#privacy'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

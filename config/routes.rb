Modelo::Application.routes.draw do
  get "home/index"

  devise_for :users,
                                        :path => "",
                                       :path_names => {:sign_in => "login", :sign_out => "sair"}



  namespace :admin do
    devise_for :users, :controllers => { :sessions => 'admin/sessions'},
                                         :path_names => {:sign_in => "login", :sign_out => "sair"}

    root :to => "home#index"
    resources :menus
    
  end

   root :to => "home#index"
   #match ':controller(/:action(/:id(.:format)))'
end

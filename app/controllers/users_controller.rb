class UsersController < ApplicationController
    #layout "users"
    #This will cause Rails to look for something like layouts/users.html.erb

    #If you want to do it for just login/logout 
    #Use, inside your login/logout methods
    #render :layout => "users"
    #render :layout => false is also an option, just in case you need to use it for some reason
end 
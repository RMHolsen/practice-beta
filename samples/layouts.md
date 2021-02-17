class StoreAdminController < ApplicationController
    layout "admin"
    
    def home
    end 

    def orders
        render :layout => "order_administration"
    end 

    def invoice 
        render :layout => false
    end 
end 

> layouts > application.html.erb or other specific name for other specific layouts (see: order administration, admin)
< !DOCTYPE html >
< html >
< head >
< /head >
< body >
LAYOUT STUFF GOES AROUND THE YIELD
<%= yield > YIELDS TO THE CONTENT OF THE INDIVIDUAL PAGES

</ body >
</ html >
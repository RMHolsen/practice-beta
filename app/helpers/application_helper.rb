module ApplicationHelper

    def last_updated(item)
        item.updated_at.strftime("Last updated %A, %b %e, at %l:%M %p")
        #As it's implemented, because several of the tables didn't start out with updated at/created at fields
        #it breaks until you update a record. After that it displays properly. 
    end 
end

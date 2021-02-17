## Schema Code
t.datetime "created_at",  null: false
t.datetime "updated_at",  null: false

Formatting: https://www.foragoodstrftime.com/

## Views Code 
<p><%= @post.updated_at.strftime("Last updated at %A, %b %3, at %l:%M %p")<br>
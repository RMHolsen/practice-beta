## Notes
Partials must always start with an underscore and references are made without the underscore.
Custom has it be things like "form" and so on, but that's not default Rails.
Always leave the <% end %> tag to close the block.
The <%= render 'XXXX' %> tag refers to the file path. Typically since it's housed in the same folder as the surrounding file it's simply <%= render 'form' %> but if not you would have to put <%= render 'posts/form' %>

## Views Code

FROM THE 'NEW' VIEW
<%= form_tag posts_path do %>
(Note: Form_tag, not form_for. No variable given because we're not prefilling with existing values.)
  <%= render 'form' %>
<% end %>

FROM THE 'EDIT' VIEW
<%= form_tag post_path(@post), method: "put" do %>
(Note: form_tag. Pre-filling with the existing views, method: "put" for... some reason?)
  <%= render 'form' %>
<% end %>

FROM THE '_FORM' VIEW
<label>Post title:</label><br>
<%= text_field_tag :title, @post.title %><br>

<label>Post Description</label><br>
<%= text_area_tag :description, @post.description %><br>
<%= submit_tag "Submit Post" %>

## Controller Code
PRETTY MUCH THE SAME AS WE KNOW IT
  def new
    @post = Post.new
  end

  def create
    @author = Author.first
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.author_id = @author.id
    @post.save
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(title: params[:title], description: params[:description])
    redirect_to post_path(@post)
  end
  
  ## From the view Pt 2
<%= render 'items/item_li' :item => item %>
where 'item' refers to @list.items.each do |item| i.e. the bareword :item refers to item from the each function

  ## From the items/_item_li view
  < li class="<%= "completed if item.complete? %>">
  < div class="view">
  <%= form_for([@list, item]) do |f| %>
  <%= f.check_box :status, :class=> "toggle, :checked => 
  <% end %>
  < label> <%= item.description %>< /label>
  < /div>

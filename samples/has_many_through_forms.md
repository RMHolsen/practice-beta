## Controller Code
  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
    
    All of the work is done here in the params. Ccategory_ids collects the ids of existent categories to associate with the post while categories_attributes[:name] collects any new categories you want to add. For the most part, ActiveRecord works behind the scenes to do the rest.

    Note that the format is linkedmodel_ids:[] and linkedmodel_attributes: [attributes].

## View Code
<%= form_for post do |f| %>
  EXTRA FIELDS GO HERE.
  <%= f.collection_check_boxes :category_ids, Category.all, :id, :name %>
    collection_check_boxes indicates the type of collection/selection we're doing. then there's the method? that passes to the params (name/key in the params hash), the all array we're passing to display, the items being passed into the params array (id/value in the array in the params hash), and the attribute from the all array to display (value, in the html).

  <%= f.fields_for :categories, post.categories.build do |categories_fields| %>
    <%= categories_fields.text_field :name %>
  <% end %>
  SUBMIT AND END HERE.


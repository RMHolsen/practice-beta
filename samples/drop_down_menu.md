
<%= f.collection_select :genre_name, Genre.all, :name, :name %>
collection_select(object, method, collection, value_method, text_method)

In the form_for method the object is already determined as form_for(@object)
So the format is thus: f.collection_select :method, Collection.all/@collections, :value_method, :text_method
Generating the following code

<select name="song[method]" id="song_method">
  <option value="value_method">text_method</option>
  <option value="value_method">text_method</option>
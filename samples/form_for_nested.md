## View Code
Standard basic form_for code
<%= form.for(@user) do |f| %>
<p>
<%= f.label :email %>
<%= f.text_field :email %>
</p>

Fields_for the nested attributes
<%= f.fields_for :addresses do |address_builder| %>
<fieldset>
<legend>Home Address</legend> (Like a header)
<legend><%= address_builder.object.address_type %></legend> (where address type is a column in the address object that also works as a hidden field below, and in the build function in the controller code)
<p>
<%= address_builder.label :street_1 %>
<%= address_builder.text_field :street_1 %>
</p>
<p>
<%= address_builder.label :street_2 %>
<%= address_builder.label :street_2 %>
</p>

<%= address_builder.hidden_field :address_type %>
</fieldset>
end fields for nested attributes
<% end %>

## Model Code
accepts_nested_attributes_for :addresses

OR

def addresses_attributes=(addresses_attributes)
addresses_attributes.each do |i, aa|
self.addresses.build(aa)
end 
end 
(note: form_for/fields_for just kicks out hashes, even hashes that look like arrays. yes it's super annoying.)

def new_team_attributes=(team_atts)
self.team = Team.where(:name => team_atts[:name]).first_or_create do |t|
t.hometown = team_atts[:hometown]
end 
end 

## Controller Code
def new
@user = User.new
@user.addresses.build(:address_type => "Home")
@user.addresses.build(:address_type => "Bizness")

private

def user_params
    params.require(:user).permit(:email, :team_name, :addresses_attributes => [:street_1, :street_2])
end 

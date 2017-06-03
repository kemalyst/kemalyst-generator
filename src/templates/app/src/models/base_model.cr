require "granite_orm/adapter/<%= @database %>"

class BaseModel < Granite::ORM 
  adapter <%= @database %>
end

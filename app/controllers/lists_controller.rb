


class ListsController < ApplicationController
  def index
  	@list = List_Item.all
  end


  def create
    puts "create method reached"
   
    list_item = ListItem.create(name: params[:name])

    puts "list item:", list_item
  end
end

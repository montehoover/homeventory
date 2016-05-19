class ListsController < ApplicationController
  def index
  	@list = ListItem.where({user_id: @current_user.id})
  end


  def create
    puts "create method reached"
   
    list_item = ListItem.create(name: params[:name])

    puts "list item:", list_item
    redirect_to lists_path
  end
  
end

class ListsController < ApplicationController
  def index
  	@list = List_Item.all
  end
end

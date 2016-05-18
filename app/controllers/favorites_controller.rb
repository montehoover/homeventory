class FavoritesController < ApplicationController
  def index
  	@favorite = Favorite.all
  end

  def new
  	@favorite = Favorite.new
  end

  def destroy
    deleted_item = Favorite.find(params[:id]).delete
    flash[:danger] = "The #{deleted_item.name} item has been deleted."
    redirect_to favorites_path
  end
end

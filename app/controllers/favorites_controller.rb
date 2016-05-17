class FavoritesController < ApplicationController
  def index
  	@favorite = Favorite.all
  end

  def create
  	
  end

  def destroy
    Favorite.find(params[:id]).delete
    redirect_to favorites_path
  end
end

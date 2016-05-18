class FavoritesController < ApplicationController
  def index
  	@favorite = Favorite.all
  end

  def new
  	@favorite = Favorite.new
  end



  def destroy
    Favorite.find(params[:id]).delete
    redirect_to favorites_path
  end

  def item_params
    {name: params[:name], img_url: params[:img_url], factual_id: params[:factual_id], count: params[:count], exp_date: params[:exp_date], user_id: params[:user_id]}
  end

  def is_favorite
    {is_favorite: params['true']}
  end

end

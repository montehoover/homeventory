class FavoritesController < ApplicationController
before_action :is_authenticated?

  def index
  	@favorite = Item.all.where({user_id: @current_user.id, is_favorite: true})
  end



  def item_params
    {name: params[:name], img_url: params[:img_url], factual_id: params[:factual_id], count: params[:count], user_id: params[:user_id]}
  end

end

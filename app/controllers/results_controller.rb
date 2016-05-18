class ResultsController < ApplicationController
  before_action :is_authenticated?
  def index
    @item = Item.new
    factual = Factual.new("EQaaFMK4DkRvfGT5GyYTEaCaUJ9Xzcfn9BALb0AA", "0bpbMmOJlirClLtE9aEpXgtUZfrhmePb4ucTAA5t")
    @results = factual.table("products-cpg").search(params[:q]).rows
    puts @results
  end

  def show
    puts params[:id]
    factual = Factual.new("EQaaFMK4DkRvfGT5GyYTEaCaUJ9Xzcfn9BALb0AA", "0bpbMmOJlirClLtE9aEpXgtUZfrhmePb4ucTAA5t")
    @result = factual.table("products-cpg").search(params[:id]).rows
  end

  def new
    @result = :item
  end

  # Check to see if item already exists; if so, update it and add to the existing count.
  # 
  def create
    puts @current_user[:user_id]
    item = Item.find_by factual_id: params[:factual_id]
    if item
      item.update update_item_params
      item.update(count: item.count + params[:count].to_f)
    else
      item = Item.create new_item_params
    end
    redirect_to items_path
    
  end
  
  private

  # Returns parameters needed for updating an item; doesn't include the count so old count doesn't get overwritten
  def update_item_params
    {name: params[:name], img_url: params[:img_url], factual_id: params[:factual_id], exp_date: params[:exp_date], user_id: params[:user_id], is_favorite: params[:is_favorite]}
  end

  # Returns the parameters for creating a new item; takes hash from update_item_params and add count (key: value) to it
  def new_item_params
    update_item_params.merge(count: params[:count].to_f)
  end


end


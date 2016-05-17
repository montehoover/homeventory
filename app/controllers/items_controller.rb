class ItemsController < ApplicationController
  def index
  	@regulars = Regular.all
  end
end

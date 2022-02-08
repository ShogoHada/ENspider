class ItemsController < ApplicationController
  def index
  end

  def show
    @items = Item.order("RANDOM()").where(word: params[:word]).limit(1)
    render json: {
      items: @items
    }
  end
  def search
    @items = Item.search(params[:search])
  end
end

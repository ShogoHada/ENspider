class ItemsController < ApplicationController
  before_action :set_q, only: [:index, :wordSearch]

  def index
  end

  def show
    @items = Item.where(word: params[:word]).order("RANDOM()").limit(1)
    render json: {
      items: @items
    }
  end

  def wordSearch
    @results = @q.result
  end

  private

  def set_q
    @q = Item.ransack(params[:q])
  end
end

class ItemsController < ApplicationController
  # before_action :set_q, only: [:wordSearch]

  def index
  end

  def show
    @items = Item.where(word: params[:word]).order("RANDOM()").limit(1)
    render json: {
      items: @items
    }
  end

  def wordSearch
    # @q = Item.ransack(word_start: params[:word])
    search = params[:search]
    word = params[:word]

    if word.present?
      @item = Item.search(search,word).page(params[:page]).per(20)
    end

    # @q.sorts = 'level desc' if @q.sorts.empty?
    # @results = @q.result(distinct: true).page(params[:page])
    @favorite = Favorite.new
    render :index
  end

  private

  # def set_q
  #   @q = Item.ransack(params[:q])
  # end
end

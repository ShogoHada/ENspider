class GamesController < ApplicationController
  before_action :set_q, only: [:index, :wordSearch]

  def index
  end

  def set_q
    @q = Item.ransack(params[:q])
  end
end

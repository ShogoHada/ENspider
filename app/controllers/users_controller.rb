class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
  end

  def show
    @item = @user.used_words.page(params[:page]).per(20)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  # def set_q
  #   @q = Item.ransack(params[:q])
  # end
end

class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  before_action :authenticate_user!

  def index
  end

  def show
    flash[:notice] = "ログイン済ユーザーのみ記事の詳細を確認できます" unless user_signed_in?
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

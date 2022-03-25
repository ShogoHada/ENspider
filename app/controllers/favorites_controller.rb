class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new(user_id: current_user.id,  item_id: clicked_item.id)
    @favorite.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @favorite = Favorite.find_by(item_id: clicked_item.id, user_id: current_user.id)
    @favorite.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def clicked_item
    Item.find(params[:item_word])
  end
end

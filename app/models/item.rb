class Item < ApplicationRecord
  has_many :favorites, dependent: :destroy

  def self.search(search,word)
    if search == "forward_match"
      @item = Item.where("word LIKE?","#{word}%").order(level: "desc")
    elsif search == "perfect_match"
      @item = Item.where(word: word)
    end
  end
end
class Item < ApplicationRecord
  def self.search(search)
    if search
      Item.where(['word LIKE ?', "#{search}"])
    end
  end

  def to_param
    name
  end
end
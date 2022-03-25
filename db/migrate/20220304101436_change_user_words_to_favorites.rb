class ChangeUserWordsToFavorites < ActiveRecord::Migration[7.0]
  def change
    rename_table :user_words, :favorites
  end
end

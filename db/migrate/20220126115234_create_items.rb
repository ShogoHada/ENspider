class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :word
      t.string :mean
      t.integer :level
    end
  end
end

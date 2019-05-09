class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.string :color
      t.string :price
      t.string :image

      t.timestamps
    end
  end
end

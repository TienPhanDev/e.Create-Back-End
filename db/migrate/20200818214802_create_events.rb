class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :category
      t.string :description
      t.string :location
      t.string :image_url
      t.date :date
      t.integer :price
      t.integer :tickets_remaining
      t.integer :capacity

      t.timestamps
    end
  end
end

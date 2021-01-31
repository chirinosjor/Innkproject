class CreateSeries < ActiveRecord::Migration[5.1]
  def change
    create_table :series do |t|
      t.string :title
      t.string :genre
      t.integer :seasons
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

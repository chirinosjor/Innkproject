class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :rented_movies
      t.integer :rented_series

      t.timestamps
    end
  end
end

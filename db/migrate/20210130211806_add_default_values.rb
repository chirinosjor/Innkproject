class AddDefaultValues < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :rented_movies, :integer, :null => false, :default => 0
    change_column :users, :rented_series, :integer, :null => false, :default => 0
  end
end

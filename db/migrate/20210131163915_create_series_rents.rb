class CreateSeriesRents < ActiveRecord::Migration[5.1]
  def change
    create_table :series_rents do |t|
      t.references :user, foreign_key: true
      t.references :series, foreign_key: true

      t.timestamps
    end
  end
end

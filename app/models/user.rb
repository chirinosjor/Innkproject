class User < ApplicationRecord
  has_many :movie_rents
  has_many :series_rents
  has_many :movies, through: :movie_rents, dependent: :delete_all
  has_many :series, through: :series_rents, dependent: :delete_all
end

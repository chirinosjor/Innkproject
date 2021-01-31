class Movie < ApplicationRecord
  has_many :user, through: :movie_rents
end
class Series < ApplicationRecord
  has_many :user, through: :series_rents
end

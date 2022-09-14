class Movie < ApplicationRecord
  validates :title, presence:true
  validates :description, presence:true
  validates :release_date, presence:true
  validates :gender, presence:true
end

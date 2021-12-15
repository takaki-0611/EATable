class Course < ApplicationRecord
  belongs_to :restaurant
  has_many :books
end

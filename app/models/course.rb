class Course < ApplicationRecord
  belongs_to :restaurant
  has_many :books

  attachment :image

  validates :name, presence: true
  validates :total_payment, presence: true
  validates :rest_id, presence: true
end

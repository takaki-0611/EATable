class Restaurant < ApplicationRecord
  has_many :books, dependent: :destroy
  has_many :courses, dependent: :destroy
  
  validates :name, presence: true
end

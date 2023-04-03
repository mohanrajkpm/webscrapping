class Restaurant < ApplicationRecord
  has_and_belongs_to_many :locations
  has_many :categories

  validates :name, presence: true
  validates :name, uniqueness: true
end

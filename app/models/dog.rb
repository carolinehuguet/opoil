class Dog < ApplicationRecord
  belongs_to :user
  has_many :walks
  validates :name, :picture, presence: true
  validates :rate, numericality: true
  validates :size, inclusion: { in: ["petit", "moyen", "grand"] }
end

class Dog < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
  has_many :walks
  has_one_attached :picture
  validates :name, :picture, presence: true
  validates :rate, numericality: true
  validates :size, inclusion: { in: ["petit", "moyen", "grand"] }
  # dropdown
end

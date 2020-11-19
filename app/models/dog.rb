class Dog < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
  has_many :walks, dependent: :nullify
  has_one_attached :picture
  geocoded_by :address
  validates :name, :picture, presence: true
  validates :rate, numericality: true
  validates :size, inclusion: { in: ["petit", "moyen", "grand"] }
  # dropdown
  after_validation :geocode, if: :will_save_change_to_address?
end

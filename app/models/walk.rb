class Walk < ApplicationRecord
  belongs_to :user
  belongs_to :dog, { optional: :true }
  validates :date_time, presence: true
  validates :price, numericality: true
  validates :status, inclusion: { in: ["accepted", "denied", "pending", "cancelled"] }
end

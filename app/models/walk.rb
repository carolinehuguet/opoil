class Walk < ApplicationRecord
  belongs_to :user
  belongs_to :dog
  validates :date_time, presence: true
  validates :price, numericality: true
end
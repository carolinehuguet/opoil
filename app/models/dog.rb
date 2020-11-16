class Dog < ApplicationRecord
  belongs_to :user
  has_many :walks
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :dogs
  has_many :walks
  validates :name, :city, presence: true
  has_one_attached :picture
  # On ne met pas de validation description
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

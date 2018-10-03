class User < ApplicationRecord
  # model associations
  has_many :posts, dependent: :destroy
  # validations (like, this thing has XYZ)
  validates :email, presence: true,
                    uniqueness: true
  validates :password, presence: true
  # Rails method
  has_secure_password
end

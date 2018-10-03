class Post < ApplicationRecord
  # model associations
  belongs_to :user
  # validations (like, this thing has XYZ)
  validates :message, presence: true
  # test is indicating presence is wrong
end

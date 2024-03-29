class Quiz < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :choices, through: :questions
  validates :title, presence: true, length: { maximum: 150 }
  # has_many :quiz_to_user, dependent: :destroy
  # has_many :user, through: :quiz_to_user
end

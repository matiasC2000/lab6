class Monster < ApplicationRecord
  has_one_attached :cover_picture
  validates :name, :birthdate, presence: true
end

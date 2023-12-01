class Queer < ApplicationRecord
  has_one_attached :image

  validates :name, presence: true, length: {minimum: 3, maximum:20}
end

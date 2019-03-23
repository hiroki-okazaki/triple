class User < ApplicationRecord
  has_one_attached :image
  attribute :region
  attribute :new_image

  validates :name, presence: true, length: { maximum: 30 }
  validates :profile, presence: true, length: { maximum: 1000 }
  validates :new_image, presence: true

  before_save do
    self.image = new_image if new_image
  end
end
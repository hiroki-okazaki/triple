class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }
  validates :profile, presence: true, length: { maximum: 1000 }
end
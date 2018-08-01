class User < ApplicationRecord
  has_many :photos, dependent: :destroy
  has_one_attached :avatar
end

class Restaurant < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :reviews, dependent: :destroy
  validates :name, :address, :phone, :website, :image, presence: true
  validates :phone, format: {
    with: /\A\(\d{3}\)\s\d{3}\-\d{4}\z/, message: 'Must be in the format (123) 456-7890'
  }
  validates :website, format: {
    with: /https?:\/\/.*/,
    message: 'Must be in the format http:// or https://'
  }
end

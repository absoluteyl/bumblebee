class Product < ApplicationRecord

  belongs_to :creator, class_name: 'User'

  has_one_attached :image

  validates :name,  presence: true, length: { maximum: 200 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :image, attached: true

  def localized_original_price
    "Price: #{self.price}"
  end

  def localized_premium_price
    "Premium Price: #{(self.price * 0.8).to_i}"
  end
end

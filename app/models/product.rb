class Product < ApplicationRecord
  has_many :order_items
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "app/assets/images/missing.jpeg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end

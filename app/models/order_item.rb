class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product

  # validates :order_items, numericality: { greater_than_or_equal_to_1: true }

end

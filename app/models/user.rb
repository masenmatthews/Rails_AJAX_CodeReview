class User < ApplicationRecord
  has_secure_password
  has_many :orders

  validates :password, :presence => true, length: { in: 6..18 }, :on => :create
  validates :password, :confirmation => true, length: { in: 6..18 }, :on => :update

  def previous_orders
    self.orders.where(status: 2).includes(order_items: :product)
  end
end

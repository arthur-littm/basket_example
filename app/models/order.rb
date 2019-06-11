class Order < ApplicationRecord
  belongs_to :customer

  # with this only we have to @order.ordered_products.each { |op| op.product } 🤮
  has_many :ordered_products
  # so that we can do @order.products 😍
  has_many :products, through: :ordered_products
end

# orders

# ordered_products

# products

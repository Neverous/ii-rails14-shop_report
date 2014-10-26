class Product < ActiveRecord::Base
    belongs_to :order_line

    validates :name, :price, :serial, presence: true
    validates :name, length: { in: 4..256 }
    validates :price, numericality: { greater_than: 0.0 }
end

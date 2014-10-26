class OrderLine < ActiveRecord::Base
    belongs_to :order
    has_one :product

    validates :product, presence: true
    validates :quantity, numericality: { only_integer: true, grater_than: 0 }
end

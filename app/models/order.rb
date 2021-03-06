class Order < ActiveRecord::Base
    PAYMENT_TYPES = ['Check', 'Credit card', 'Purchase order'].freeze

    validates :name, :address, :email, presence: true
    validates :pay_type, inclusion: PAYMENT_TYPES
end

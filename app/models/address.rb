class Address < ApplicationRecord
    validates :line_1, presence: true
    validates :suburb, presence: true
    validates :state, presence: true
    validates :postcode, presence: true, length: {maximum: 4, minimum: 4}
end

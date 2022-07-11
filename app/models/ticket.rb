class Ticket < ApplicationRecord
  belongs_to :event
  belongs_to :holder, foreign_key: "holder_id", class_name: "User"
  belongs_to :seller, foreign_key: "seller_id", class_name: "User" 
end

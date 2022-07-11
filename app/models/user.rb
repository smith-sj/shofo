class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # custom attributes not included in devise by default
  #  must not be nill
  validates :phone_number, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :date_of_birth,presence: true

  # a user may host many events
  has_many :events

  # a user may have sold many tickets to events
  has_many :sold_tickets, foreign_key: "seller_id", class_name: "Ticket"

  # a user may have bought many tickets to events
  has_many :bought_tickets, foreign_key: "holder_id", class_name: "Ticket"
end

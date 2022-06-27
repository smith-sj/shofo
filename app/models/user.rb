class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :phone_number, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :date_of_birth,presence: true

  has_many :events

  has_many :sold_tickets, foreign_key: "seller_id", class_name: "Ticket"
  has_many :bought_tickets, foreign_key: "buyer_id", class_name: "Ticket"
end

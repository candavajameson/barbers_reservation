class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ROLES = %i[admin barber customer]

  has_many :reservations, class_name: "Reservation", foreign_key: "user_id"
  has_many :appointments, class_name: "Reservation", foreign_key: "barber_id" 
end

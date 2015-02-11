class Reservation < ActiveRecord::Base

	belongs_to :barber, dependent: :destroy, class_name: "User", foreign_key: "barber_id"
	belongs_to :user , dependent: :destroy, class_name: "User", foreign_key: "user_id"
	
end
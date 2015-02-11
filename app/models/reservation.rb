class Reservation < ActiveRecord::Base

	belongs_to :barber, dependent: :destroy, class_name: "User" 
	belongs_to :user , dependent: :destroy, class_name: "User"
	
end
class ReservationsController < ApplicationController
	
	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private 
	def set_reservation
		@reservation = Reservation.find(params[:id])
	end

	def reservation_params
		params.require(:reservation).permit(:barber_id, :date, 
												:service_ids, :time)
	end
end
class Barbers::ReservationsController < Barbers::ApplicationController

	def index
		@reservations = current_user.appointments.page(params[:page]).per(10)
	end
	
end
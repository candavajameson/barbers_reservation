class Customers::ReservationsController < Customers::ApplicationController
	
	def index
		@reservations = current_user.reservations.page(params[:page]).per(10)
	end

	def new
		@reservation = Reservation.new
	end

	def create
		@reservation = Reservation.new reservation_params
		@reservation.user_id = current_user.id
		
		if @reservation.save
			flash[:notice] = 'Successfully created reservation'
			redirect_to customers_reservation_path
		else
			render 'new'
		end

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
class Admin::BarbersController < Admin::ApplicationController 

	before_filter :set_user, only: [:update, :edit]

	def index
		@users = User.page(params[:page]).per(10)
	end

	def new
	end

	def create
		@user = User.new barber_params
		if @user.save
			flash[:notice] = 'Successfully save barber'
			redirect_to admin_barber_path
		else
			render 'new'
	end

	def edit
	end

	def update
		if @user.update_attributes barber_params
			flash[:notice] = 'Successfully updated barber'
			redirect_to admin_barber_path
		else 
			render 'edit'
		end
	end

	private
	def barber_params
		params.require(:user).permit(:email, :password,
										:password_confirmation)
	end

	def set_user
		@user = User.find(params[:id])
	end
end
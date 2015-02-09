class Admin::ServicesController < Admin::ApplicationController

	before_filter :set_service, only: [:edit, :update]

	def index
	end

	def new
		@service = Service.new
	end

	def create
		@service = Service.new service_params
	end

	def edit
	end

	def update
		if @service.update_attributes service_params
		
		else

		end
	end

	private
	def service_params
		params.require(:service).permit(:name, :description,
											:points)
	end

	def set_service
		@service = Service.find(params[:id])
	end

end
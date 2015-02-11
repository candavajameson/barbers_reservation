class Barbers::ApplicationController < ApplicationController
	
	before_filter :authenticate_barbers!

	def authenticate_barbers!
	end
end
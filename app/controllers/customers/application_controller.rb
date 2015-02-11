class Customers::ApplicationController < ApplicationController

	before_filter :authenticate_customer!

	def authenticate_customer!

	end
end
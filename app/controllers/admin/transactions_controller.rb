class Admin::TransactionsController < Admin::ApplicationController

	before_filter :set_transaction, only: [:edit, :update]

	def index
	end

	def new
	end

	def create
		@transaction = Transaction.new transaction_params
		if @transaction.save
			flash[:notice] = 'Successfully created transaction'
			redirect_to transaction_admin_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
	end

	private
	def transaction_params
		params.require(:transaction).permit(:user_id, :barber_id)
	end

	def set_transaction
		@transaction = Transaction.find(params[:id])
	end
end
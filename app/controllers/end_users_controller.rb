class EndUsersController < ApplicationController
	def show
		@customer = Customer.find(params[:id])
	end
	def edit
		@customer = Customer.find(params[:id])
	end
	def update
		@customer = Customer.find(params[:id])
		@customer.update(customer_params)
		redirect_to end_user_path(@customer)
	end
	def unsubscribe
		@customer = Customer.find_by(email: params[:email])
	end
	def withdraw
		@customer = current_customer
		@customer.update(is_deleted: true)
		reset_session
		redirect_to root_path
	end
	private
	def customer_params
      params.require(:customer).permit(:username, :nickname, :email, :is_deleted, :image, :profiel)
    end
end

class EndUsersController < ApplicationController
	def show
		@customer = Customer.find(params[:id])
	end
	def edit
		@customer = Customer.find(params[:id])
		if @customer == current_customer
		    render :edit
		else
			redirect_to customer_path(@customer)
		end
	end
	def update
		@customer = Customer.find(params[:id])
		if @customer.update(customer_params)
			flash[:notice] = "変更を保存しました"
			redirect_to customer_path(@customer)
		else
			render :edit
		end
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
	def index
	end
	private
	def customer_params
      params.require(:customer).permit(:username, :nickname, :email, :is_deleted, :image, :profiel)
    end
end

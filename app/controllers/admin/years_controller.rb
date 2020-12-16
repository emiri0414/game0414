class Admin::YearsController < ApplicationController
	def index
		@years = Year.all
		@year = Year.new
	end
	def create
		@year = Year.new(year_params)
		@year.save
		redirect_to admin_years_path
	end
	def edit
	end
	def update
	end
	private
	def year_params
		params.require(:year).permit(:production_year)
	end
end

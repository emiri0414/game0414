class GamesController < ApplicationController
	def ps4
		@games = Game.where(category_id: 1).order(production_date: :desc)
	end
	def switch
		@games = Game.where(category_id: 2).order(production_date: :desc)
	end
	def show
		@games = Game.all
		@game = Game.find_by(params[:id])
		@review = Review.new
	end
	def create
	end
	def edit
	end
	def update
	end
end


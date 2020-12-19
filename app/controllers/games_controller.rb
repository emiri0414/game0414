class GamesController < ApplicationController
	def ps4
		@games = Game.where(category_id: 1).order(production_date: :desc)
	end
	def switch
	end
	def create
	end
	def edit
	end
	def update
	end
end


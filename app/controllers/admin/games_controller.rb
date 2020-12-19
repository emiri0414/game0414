class Admin::GamesController < ApplicationController
	def index
		@game = Game.new
		@games = Game.all
	end
	def create
		@game = Game.new(game_params)
		@game.save!
		redirect_to admin_games_path
	end
	def edit
		@game = Game.find(params[:id])
	end
	def update
		@game = Game.find(params[:id])
		@game.update(game_params)
		redirect_to admin_games_path
	end
	private
	def game_params
		params.require(:game).permit(:production_date, :title, :body, :genre_id, :year_id, :image, :category_id)
	end
end

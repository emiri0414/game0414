class ReviewsController < ApplicationController
	def index
		@games = Game.all
		@game = Game.find(params[:game_id])
    	@reviews = @game.reviews
		@review = Review.new
	end
	def create
		@game = Game.find(params[:game_id])
	    @review = current_customer.reviews.build(review_params)
	    @review.save!
	    redirect_to game_path(@game)
	end
	private
	def review_params
		params.require(:review).permit(:game_id, :score, :content)
	end
end

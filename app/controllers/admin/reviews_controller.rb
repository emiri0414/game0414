class Admin::ReviewsController < ApplicationController
	def index
		@game = Game.find(params[:game_id])
    	@reviews = @game.reviews
	end
	def create
		@review = Review.new(review_params)
    	@review.customer_id = current_customer.id
    	if @review.save
      	redirect_to reviews_path(@review.game)
    	else
      	@game = Game.find(params[:game_id])
      	render "games/show"
      end
	end
	private
	def review_params
		params.require(:review).permit(:game_id, :score, :content)
	end
end

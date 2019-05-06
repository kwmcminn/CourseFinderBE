class RoundsController < ApplicationController

   before_action :set_round, only: [:edit, :update, :show]

   def index
     @rounds = Round.all
     render json: @rounds
   end

   def show
      @sorted_round = @round.holes.sort_by{|x| x.id}
      render json: @sorted_round
   end

   def create
     @round = Round.create(post_params)
     (1..(params[:hole_amount].to_i)).each do |x|
        Hole.create(hole_number: x, total: 0, round_id: @round.id)
   end
   render json: @round
   end

   def edit
   end

   def update
     byebug
     @round.update(post_params)
     redirect_to @round
   end


   private

     def post_params
       params.permit(:user_id, :course_id)
     end

     def set_round
       @round = Round.find(params[:id])
     end
end

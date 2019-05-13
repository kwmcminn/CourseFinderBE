class RoundsController < ApplicationController

   before_action :set_round, only: [:edit, :update, :show]

   def index
     @rounds = Round.all.sort_by {|obj| obj.id}.reverse
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
    @rounds = Round.all.sort_by {|obj| obj.id}.reverse
   render json: @rounds
   end

   def edit
   end

   def destroy
      Round.destroy(params[:id])
      @rounds = Round.all.sort_by {|obj| obj.id}.reverse
      render json: @rounds
   end


   private

     def post_params
       params.permit(:user_id, :course_id)
     end

     def set_round
       @round = Round.find(params[:id])
     end
end

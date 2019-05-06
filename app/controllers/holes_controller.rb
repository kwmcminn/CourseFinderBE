require 'byebug'

class HolesController < ApplicationController
   before_action :set_hole, only: [:edit, :update, :show]

   def update
      puts post_params
      @hole.update(post_params)
      @round = Round.find_by(id: @hole.round_id)
      @sorted_round = @round.holes.sort_by{|x| x.id}
      render json: @sorted_round
   end

   def create
     @hole = Hole.create(post_params)
     render json: @hole
   end


   private

     def post_params
       params.permit(:round_id, :total)
     end

     def set_hole
       @hole = Hole.find(params[:id])
     end
end

class MovesController < ApplicationController
    def index
        @moves = Move.all
    end

    # NEW
    def new
        @move = Move.new
    end

    # Create
    def create
        move = Move.create move_params
        redirect_to moves_path(move.id) # GET request to SHOW 
    end

    # EDIT
    def edit
        @move = Move.find params[:id]
    end    

    def update
        move = Move.find params[:id]
        move.update move_params
        redirect_to move
    end

    def show
        @move = Move.find params[:id]
    end

    # DESTROY
    def destroy
        move = Move.find params[:id]
        move.destroy
        redirect_to moves_path
    end

    private 
      def move_params
        params.require(:move).permit(:name, :category, :position, :description, :image )
      end
end
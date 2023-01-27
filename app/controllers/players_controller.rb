class PlayersController < ApplicationController
    def index
        @players = Player.all
    end

    def new
        @player = Player.new
    end

    def create
        player = Player.create player_params
        redirect_to players_path(player.id) # GET request to SHOW 
    end

    def edit
        @player = Player.find (params[:id])
    end

    def update
        player = Player.find (params[:id])
        player.update player_params
        redirect_to players_path
    end

    def show
        @player = Player.find (params[:id])
    end

    def destroy
        player = Player.find (params[:id])
        player.destroy
        redirect_to players_path
    end
    
    private 
    def player_params
        params.require(:player).permit( :name, :position, :teamname, :playernumber, :description, :quote, :image )
    end
end
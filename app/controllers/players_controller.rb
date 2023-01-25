class PlayersController < ApplicationController
    def index
        @players = Player.all
    end

    # NEW
    def new
        @player = Player.new
    end

    # Create
    def create
        player = Player.create player_params
        redirect_to players_path(player.id) # GET request to SHOW 
    end

    # EDIT
    def edit
        @player = Player.find params[:id]
    end

    # UPDATE
    def update
        player = Player.find params[:id]
        player.update player_params
        redirect_to players_path
    end

    # SHOW
    def show
        @player = Player.find params[:id]
    end

    # DESTROY
    def destroy
        player = Player.find params[:id]
        player.destroy
        redirect_to players_path
    end

    def undraft
        @player = Player.find params[:user][:players]
        @current_user.players.delete @player
        redirect_to dreams_path
    end
    
    private 
    def player_params
        params.require(:player).permit( :name, :position, :teamname, :playernumber, :description, :quote, :image )
    end
end
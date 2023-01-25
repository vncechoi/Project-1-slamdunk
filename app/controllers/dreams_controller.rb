class DreamsController < ApplicationController
    def index
        @player = Player.all
    end

    def update
        @player = Player.find params[:id]
        @current_user.players << @player
        redirect_to dreams_path
    end
end
class DreamsController < ApplicationController
    
    def new
        @dream = Dream.new
    end

    def index
        @current_user = @current_user
        @dreams = @current_user.dreams
    end

    def update
        dream = Dream.find params[:id]
        dream.update dream_params
    end

    def edit
        @dream = @current_user.dreams.find(params[:id])
    end

    def undraft_player
        @dream = @current_user.dreams.find(params[:dream_id])
        @player = Player.find(params[:id])
        @dream.players.delete(@player)
        redirect_to :back
    end
  
    def add_players
        @dream = @current_user.dreams.find(params[:id])
        @player = @dream.players.find(params[:player_id])
        @dream.players << @players
        redirect_to dream_path(@dream)
    end


    def destroy
        dream = Dream.find params[:id]
        dream.destroy
        redirect_to dreams_path
    end

    def create
      @dream = Dream.new(dream_params)
      @dream.user_id = @current_user.id
      if @dream.save
        players = Player.find(params[:player_ids])
        players.each do |player|
          @dream.players << player
        end
        redirect_to dreams_path
      else
        render 'new'
      end
    end
  
    private
  
    def dream_params
        params.require(:dream).permit(:name, :avatar, :province, :color, :user_id, player_ids: [])
    end
  end
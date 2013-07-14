class PlayersController < ApplicationController
  def index
    @players = Players::Player.all
  end

  def show
    @player = Player.find(params[:id])

    respond_to do |format|
      format.json { render json: @player }
    end
  end

  def typeahead
    @players = Agency.typeahead(params[:query]) 

    respond_to do |format|
      format.js
      format.json { render json: @players, status: :created }
    end
  end
end

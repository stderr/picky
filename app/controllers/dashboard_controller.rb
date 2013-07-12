class DashboardController < ApplicationController
  def index
    @players = Players::Player.all.page(params[:page])

    respond_to do |format|
      format.html
    end
  end
end

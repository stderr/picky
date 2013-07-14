class DashboardController < ApplicationController
  def index
    @players = Agency.paginated(params[:page])
    
    respond_to do |format|
      format.html
    end
  end
end

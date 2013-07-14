class PredictionsController < ApplicationController
  def index
    @predictions = Prediction.all
  end

  def new
    @prediction = Prediction.new
    @prediction.build_score
  end

  def create
    @prediction = Prediction.new(params[:prediction])

    respond_to do |format|
      if @prediction.save
        format.html { redirect_to @prediction, notice: 'Your prediction has been saved!' }
        format.js
        format.json { render json: @prediction, status: :created, location: @prediction }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

end

class Api::ScoresController < ApplicationController
  def index
    scores = Score
      .order(time: :asc)
      .limit(10)

    render json: scores
  end

  def create
    score = Score.create!(
      name: params[:name],
      time: params[:time]
    )

    render json: score, status: :created
  end
end
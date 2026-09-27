class Api::GamesController < ApplicationController
  def create
    game = Game.create!(
      started_at: Time.current
    )

    render json: {
      id: game.id,
      started_at: game.started_at
    }, status: :created
  end
end
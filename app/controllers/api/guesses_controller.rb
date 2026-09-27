 
class Api::GuessesController < ApplicationController
  def create
    puts "PARAMS: #{params.inspect}"

    game = Game.find(params[:game_id])
    character = Character.find(params[:character_id])

    x = params[:x].to_f
    y = params[:y].to_f

    tolerance = 5

    x_difference = (character.x - x).abs
    y_difference = (character.y - y).abs

    correct =
      x_difference <= tolerance &&
      y_difference <= tolerance

    game.guesses.create!(
      character: character,
      x: x,
      y: y,
      correct: correct
    )

    finished = false
    time = nil

    if correct
      found_count =
        game.guesses
          .where(correct: true)
          .distinct
          .count(:character_id)

      if found_count == Character.count
        game.update!(
          finished_at: Time.current
        )

        finished = true

        time =
          game.finished_at.to_i -
          game.started_at.to_i
      end
    end

    if correct
      render json: {
        correct: true,
        finished: finished,
        time: time,
        character: {
          id: character.id,
          name: character.name,
          x: character.x,
          y: character.y
        }
      }
    else
      render json: {
        correct: false,
        finished: false
      }
    end
  end
end


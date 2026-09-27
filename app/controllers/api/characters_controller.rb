class Api::CharactersController < ApplicationController
  def index
    characters = Character.all

    render json: characters.as_json(
      only: [:id, :name]
    )
  end
end
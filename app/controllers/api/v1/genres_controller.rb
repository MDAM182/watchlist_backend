class Api::V1::GenresController < ApplicationController
  def index
  genres = Genre.all
  #render json: genres
  render json: GenreSerializer.new(genres)
  end

  def update
    Genre.find(params[:id]).update(genre_params)
    render json: Genre.find(params[:id])
 end

 private

 def genre_params
   params.require(:program).permit(:name)
 end
end

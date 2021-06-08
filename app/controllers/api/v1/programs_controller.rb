class Api::V1::ProgramsController < ApplicationController

  def index
    programs = Program.all
    # render json: @programs
    render json: ProgramSerializer.new(pprograms)
  end

  def create
    program = Program.new(program_params)
    if syllabus.save
      render json: program, status: :accepted
    else
      render json: {errors: program.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def program_params
    params.require(:program).permit(:title, :favorite_quote, :media_type, :image_url, :genre_id)
  end
end

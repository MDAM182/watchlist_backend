class Api::V1::ProgramsController < ApplicationController
  before_action :find_program, only: [:update]


  def index
    programs = Program.all
    # render json: @programs
    render json: ProgramSerializer.new(programs)
  end

  def create
    program = Program.new(program_params)
    if program.save
      render json: ProgramSerializer.new(program), status: :accepted
    else
      render json: {errors: program.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def update
      @program.update(program_params)
      if @program.save
        render json: @program, status: :accepted
      else
        render json: { errors: @program.errors.full_messages }, status: :unprocessible_entity
      end
    end

  # def update
  #   Program.find(params[:id]).update(program_params)
  #   render json: Program.find(params[:id])
# end
#
# def destroy
#  render json: Program.find(params[:id]).destroy
# end


  private

  def program_params
    params.require(:program).permit(:title, :favorite_quote, :media_type, :image_url, :genre_id)
  end


  def find_program
    @program = Program.find(params[:id])
  end
end

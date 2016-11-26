class ChoresController < ApplicationController
  before_action :set_chore, only: [:show, :update, :destroy]

  def set_chore
    @chore = Chore.find(params[:id])
  end

  def chore_params
    params.require(:chore).permit(:name, :due_date, :difficulty, :assigned_to)
  end

  def index
    @index = Chore.all

    render json: @index
  end

  def show
    render json: Chore.find(params[:id])
  end

  def create
    @chore = Chore.new(chore_params)

    if @chore.save
      render json: @chore, status: :created
    else
      render json: @chore.errors, status: :unprocessible_entity
    end
  end

  def update
    if @chore.update(chore_params)
      head :no_content
    else
      render json: @chore.errors, status: :unprocessible_entity
    end
  end

  def destroy
    @chore.destroy

    head :no_content
  end
end

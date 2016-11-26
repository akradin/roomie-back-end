class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :update, :destroy]

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name)
  end

  def index
    @index = Group.all

    render json: @index
  end

  def show
    render json: Group.find(params[:id])
  end

  def create
    @group = Group.new(group_params)

    if @group.save
      render json: @group, status: :created
    else
      render json: @group.errors, status: :unprocessible_entity
    end
  end

  def update
    if @group.update(group_params)
      head :no_content
    else
      render json: @group.error, status: :unprocessible_entity
    end
  end

  def destroy
    @group.destroy

    head :no_content
  end
end

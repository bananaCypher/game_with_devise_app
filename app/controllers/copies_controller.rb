class CopiesController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def new
    @copy = Copy.new
  end

  def create
    Copy.create(copy_params)
    redirect_to copies_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def add_game
    @game = Game.find(params[:id])
    @copy = Copy.new
    render :action => 'new'
  end

  private
  def copy_params
    params.require(:copy).permit(:game_id, :console, :user_id)
  end
end

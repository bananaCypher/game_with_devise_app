class GamesController < ApplicationController

  before_action :authenticate_user!, except: [:index]
  before_action :set_game, except: [:index, :new, :create]


  def index
    @games = Game.all.order(:name)
  end

  def new
    @game = Game.new
  end

  def create
    Game.create(game_params)
    redirect_to games_path
  end

  def show
  end

  def edit
  end

  def update
    @game.update(game_params)
    redirect_to games_path
  end

  def destroy
    @game.destroy
    redirect_to games_path
  end

  private
  def game_params
    params.require(:game).permit(:name, :description, :image)
  end

  def set_game
    @game = Game.find(params[:id])
  end
end

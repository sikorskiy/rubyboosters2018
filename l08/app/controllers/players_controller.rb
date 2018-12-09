class PlayersController < ApplicationController
  def rules
  end

  def champions
    @players = Player.all
  end

  def home
    @players = Player.where.not(name: nil)
  end

  def form
    @player = Player.new
    @player.name = params[:name]
    @player.death_year = params[:death_year].to_i
    @player.birth_year = params[:birth_year].to_i
    @player.save
    redirect_to root_path
  end
end

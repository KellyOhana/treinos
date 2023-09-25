class TreinosController < ApplicationController
  def index
    @treinos = Treino.all
  end

  def new
    @treino = Treino.new
  end
end
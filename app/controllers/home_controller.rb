class HomeController < ApplicationController
  def index
    @treinos_prontos = TreinoPronto.all
  end
end

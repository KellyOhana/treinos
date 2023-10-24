class ExerciciosController < ApplicationController
  before_action :authenticate_user!

  def new
    render turbo_stream: turbo_stream.append(:exercicios, partial: "exercicios/exercicio", locals: { exercicio: Exercicio.new })
  end

  def destroy
    exercicio = Exercicio.find(params[:id])
    exercicio.destroy
  rescue ActiveRecord::RecordNotFound
    exercicio = Exercicio.new(id: params[:id])
  ensure
    render turbo_stream: turbo_stream.remove(exercicio.id)
  end
end

class TreinosController < ApplicationController
  before_action :set_treino, only: %i[ show edit update destroy copiar_treino ]
  before_action :authenticate_user!

  # GET /treinos or /treinos.json
  def index
    @treinos = current_user.treino
  end

  # GET /treinos/1 or /treinos/1.json
  def show
    @exercicios = @treino.exercicios.where(concluido: false).order(:nivel).limit(5)
  end

  # GET /treinos/new
  def new
    @treino = current_user.treino.build
    @treino.exercicios.build
  end

  # GET /treinos/1/edit
  def edit
  end

  # POST /treinos or /treinos.json
  def create
    @treino = current_user.treino.build(treino_params)

    respond_to do |format|
      if @treino.save
        format.html { redirect_to treino_url(@treino), notice: "Treino criado com sucesso." }
        format.json { render :show, status: :created, location: @treino }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @treino.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /treinos/1 or /treinos/1.json
  def update
    respond_to do |format|
      if @treino.update(treino_params)
        format.html { redirect_to treino_url(@treino), notice: "Treino atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @treino }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @treino.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /treinos/1 or /treinos/1.json
  def destroy
    @treino.destroy

    respond_to do |format|
      format.html { redirect_to treinos_url, notice: "Treino removido com sucesso." }
      format.json { head :no_content }
    end
  end

  def adicionar_treino_pronto

    treino_pronto = TreinoPronto.find(params[:id])

    treino = current_user.treino.build(nome: treino_pronto.nome)

    treino_pronto.exercicios.each do |exercicio|
      treino.exercicios.build(nome: exercicio.nome, concluido: false, nivel: exercicio.nivel,
                              descricao: exercicio.descricao)
    end

    treino.save

    redirect_to treinos_url
  end

  def copiar_treino
    treino_duplicado = @treino.dup
    treino_duplicado.nome = "#{@treino.nome}_#{Time.now.to_i}"

    treino_duplicado.save

    @treino.exercicios.each do |exercicio|
      exercicio_duplicado = exercicio.dup
      exercicio_duplicado.treino_id = treino_duplicado.id
      exercicio_duplicado.codependencia = nil
      exercicio_duplicado.save
    end

    redirect_to treinos_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treino
      @treino = Treino.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def treino_params
      params.require(:treino).permit(:nome, :user_id, exercicios_attributes: [:id, :nome, :concluido, :nivel, :codependencia, :_destroy])
    end
end

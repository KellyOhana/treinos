class ExerciciosController < ApplicationController
  before_action :authenticate_user!
  before_action :setup_treino

  # GET /exercicios or /exercicios.json
  def index
    @exercicios = Exercicio.all
  end

  # GET /exercicios/1 or /exercicios/1.json
  def show
  end

  # GET /exercicios/new
  def new
  end

  # GET /exercicios/1/edit
  def edit
  end

  # POST /exercicios or /exercicios.json
  def create
    @treino = Treino.find(params[:treino_id])
    @exercicio = @treino.exercicios.build(exercicio_params)

    respond_to do |format|
      if @exercicio.save
        format.html { redirect_to exercicio_url(@exercicio), notice: "Exercicio was successfully created." }
        format.json { render :show, status: :created, location: @exercicio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @exercicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercicios/1 or /exercicios/1.json
  def update
    respond_to do |format|
      if @exercicio.update(exercicio_params)
        format.html { redirect_to exercicio_url(@exercicio), notice: "Exercicio was successfully updated." }
        format.json { render :show, status: :ok, location: @exercicio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @exercicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercicios/1 or /exercicios/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.


    def setup_treino
      @treino = Treino.new(exercicios: [Exercicio.new])

      respond_to do |format|
        format.html { redirect_to exercicio_url, notice: "Exercicio foi alterado." }
        format.json { head :no_content }
      end
    end
    # Only allow a list of trusted parameters through.
    def exercicio_params
      params.require(:exercicio).permit(:nome, :treino_id)
    end
end

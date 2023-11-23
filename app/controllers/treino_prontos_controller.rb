class TreinoProntosController < ApplicationController
  before_action :set_treino_pronto, only: %i[ show edit update destroy ]

  # GET /treino_prontos or /treino_prontos.json
  def index
    @treino_prontos = TreinoPronto.all
  end

  # GET /treino_prontos/1 or /treino_prontos/1.json
  def show

    @exercicios = @treino_pronto.exercicios
  end

  # GET /treino_prontos/new
  def new
    @treino_pronto = TreinoPronto.new
  end

  # GET /treino_prontos/1/edit
  def edit
  end

  # POST /treino_prontos or /treino_prontos.json
  def create
    @treino_pronto = TreinoPronto.new(treino_pronto_params)

    respond_to do |format|
      if @treino_pronto.save
        format.html { redirect_to treino_pronto_url(@treino_pronto), notice: "treino pronto was successfully created." }
        format.json { render :show, status: :created, location: @treino_pronto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @treino_pronto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /treino_prontos/1 or /treino_prontos/1.json
  def update
    respond_to do |format|
      if @treino_pronto.update(treino_pronto_params)
        format.html { redirect_to treino_pronto_url(@treino_pronto), notice: "treino pronto was successfully updated." }
        format.json { render :show, status: :ok, location: @treino_pronto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @treino_pronto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /treino_prontos/1 or /treino_prontos/1.json
  def destroy
    @treino_pronto.destroy

    respond_to do |format|
      format.html { redirect_to treino_prontos_url, notice: "treino pronto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treino_pronto
      @treino_pronto = TreinoPronto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def treino_pronto_params
      params.fetch(:treino_pronto, {})
    end
end

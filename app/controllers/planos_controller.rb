class PlanosController < ApplicationController
  before_action :set_plano, only: %i[ show edit update destroy ]

  # GET /planos or /planos.json
  def index
    @planos = Plano.all
  end

  # GET /planos/1 or /planos/1.json
  def show
  end

  # GET /planos/new
  def new
    @plano = Plano.new
  end

  # GET /planos/1/edit
  def edit
  end

  # POST /planos or /planos.json
  def create
    @plano = Plano.new(plano_params)

    respond_to do |format|
      if @plano.save
        format.html { redirect_to plano_url(@plano), notice: "Plano was successfully created." }
        format.json { render :show, status: :created, location: @plano }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @plano.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planos/1 or /planos/1.json
  def update
    respond_to do |format|
      if @plano.update(plano_params)
        format.html { redirect_to plano_url(@plano), notice: "Plano was successfully updated." }
        format.json { render :show, status: :ok, location: @plano }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @plano.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planos/1 or /planos/1.json
  def destroy
    @plano.destroy!

    respond_to do |format|
      format.html { redirect_to planos_url, notice: "Plano was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plano
      @plano = Plano.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plano_params
      params.require(:plano).permit(:description)
    end
end

def new
        @plano = Plano.new(plano_requisitos)
        @plano.save
end

def plano_requisitos
    params.require(:plano).permit(:nome, :preco, :desc)
  end
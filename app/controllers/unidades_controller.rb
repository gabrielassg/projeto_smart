class UnidadesController < ApplicationController
    def new
        @unidades = Unidade.new
       
    end

def create
  @unidades = Unidade.new(unidade_requisitos)
  @unidades.save

  end
    def unidade_requisitos
    params.require(:unidade).permit(:nome , :cidade, :estado, :endereco, :pais)
  end
def index
  puts params.inspect
    @unidades = Unidade.all 
    
  end
end

def destroy
  @unidades = Unidade.find(params[:id])
  @unidades.destroy
  redirect_to units_path, notice: "Unidade excluída."
end

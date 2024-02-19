class UserController < ApplicationController
    def new
    @user = User.new
    end

    def create
        @user = User.new(unidade_requisitos)
        @user.save
      
        end
          
      def index
        puts params.inspect
          @user = User.all 
          
        end
      end
      
      def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to units_path, notice: "Usuário Excluído."
      end
      

    def user_requisitos
    params.require(:user).permit(:name, :email, :cpf, :telefone, :idade, :endereco, :ja_era_cliente_smart)
 end
end

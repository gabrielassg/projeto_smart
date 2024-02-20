class AddFkUnidadeToPlano < ActiveRecord::Migration[7.1]
  def change
    add_reference :planos, :unidade
  end
end

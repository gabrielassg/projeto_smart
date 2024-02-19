class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :cpf
      t.string :telefone
      t.integer :idade
      t.string :endereco
      t.boolean :ja_era_cliente_smart, default: false


      t.timestamps
    end
  end
end

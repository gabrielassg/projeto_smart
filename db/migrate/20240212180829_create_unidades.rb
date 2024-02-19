class CreateUnidades < ActiveRecord::Migration[7.1]
  def change
    create_table :unidades do |t|
      t.string :nome
      t.string :cidade
      t.string :estado
      t.string :endereco
      t.string :pais

      t.timestamps
    end
  end
end

class CreatePlanos < ActiveRecord::Migration[7.1]
  def change
    create_table :planos do |t|
      t.string: nome
      t.float: preco
      t.text:  desc

      t.timestamps
    end
  end
end

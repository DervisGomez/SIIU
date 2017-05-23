class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :cedula
      t.string :email
      t.integer :rol
      t.string :clave

      t.timestamps null: false
    end
  end
end

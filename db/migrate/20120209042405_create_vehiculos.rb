class CreateVehiculos < ActiveRecord::Migration
  def change
    create_table :vehiculos do |t|
      t.integer :tipo_vehiculo_id
      t.integer :marca_id
      t.string :placa
      t.integer :modelo
      t.decimal :valor_comercial
      t.decimal :valor_prima
      t.decimal :tasa

      t.timestamps
    end
  end
end

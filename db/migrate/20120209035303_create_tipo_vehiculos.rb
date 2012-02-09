class CreateTipoVehiculos < ActiveRecord::Migration
  def change
    create_table :tipo_vehiculos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end

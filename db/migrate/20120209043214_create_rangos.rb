class CreateRangos < ActiveRecord::Migration
  def change
    create_table :rangos do |t|
      t.integer :tipo_vehiculo_id
      t.decimal :monto_desde
      t.decimal :monto_hasta
      t.decimal :tasa
      t.decimal :danos
      t.decimal :robo

      t.timestamps
    end
  end
end

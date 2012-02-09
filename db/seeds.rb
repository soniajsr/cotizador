# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Marca.delete_all
TipoVehiculo.delete_all

Marca.create(nombre: 'Alfa romero')
Marca.create(nombre: 'Alfa 1')
Marca.create(nombre: 'Alfa 2')
Marca.create(nombre: 'Alfa 3')
Marca.create(nombre: 'Alfa 4')
Marca.create(nombre: 'Alfa 5')
Marca.create(nombre: 'Alfa 6')
Marca.create(nombre: 'Alfa 7')
Marca.create(nombre: 'Alfa 8')
Marca.create(nombre: 'Alfa 9')

TipoVehiculo.create(nombre:'sedan')
TipoVehiculo.create(nombre:'sedan1')
TipoVehiculo.create(nombre:'sedan2')
TipoVehiculo.create(nombre:'sedan3')
TipoVehiculo.create(nombre:'sedan4')
TipoVehiculo.create(nombre:'sedan5')
TipoVehiculo.create(nombre:'sedan6')
TipoVehiculo.create(nombre:'sedan7')
TipoVehiculo.create(nombre:'sedan8')
TipoVehiculo.create(nombre:'sedan9')

#cargar datos y relacionarlo con la tabla de rango y tipo de vehiculos

TipoVehiculo.all.each do |tipo|
Rango.create(:tipo_vehiculo_id=>tipo_id)


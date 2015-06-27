class PopulatingVehicleTypesTable < ActiveRecord::Migration
  def change
  	execute "insert into vehicle_types(type_name, type_prefix, fuel_type, created_at, updated_at) values ('Caminhão', 'TRC', 'Diesel', datetime('now'), datetime('now'))"
  	execute "insert into vehicle_types(type_name, type_prefix, fuel_type, created_at, updated_at) values ('Carro', 'TRP', 'Gasolina', datetime('now'), datetime('now'))"
	execute "insert into vehicle_types(type_name, type_prefix, fuel_type, created_at, updated_at) values ('Motocicleta', 'TRM', 'Gasolina', datetime('now'), datetime('now'))"
	execute "insert into vehicle_types(type_name, type_prefix, fuel_type, created_at, updated_at) values ('Barco', 'AQB', 'Diesel', datetime('now'), datetime('now'))"
	execute "insert into vehicle_types(type_name, type_prefix, fuel_type, created_at, updated_at) values ('Jetski', 'AQJ', 'Diesel', datetime('now'), datetime('now'))"
	execute "insert into vehicle_types(type_name, type_prefix, fuel_type, created_at, updated_at) values ('Helicóptero', 'AEH', 'Querosene', datetime('now'), datetime('now'))"
  end
end

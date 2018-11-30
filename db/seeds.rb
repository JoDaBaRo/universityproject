# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "cristian", email: "cristianleonardo999@gmail.com", password: '0987654321', password_confirmation: '0987654321', confirmed_at: Date.today)

licence_type_one = LicenceType.create(allowed_vehicles: "Motocicleta y mototriciclo", category: "A2", service_type: "Particular")
licence_type_two = LicenceType.create(allowed_vehicles: "Carro y moto", category: "B2", service_type: "Particular")
licence_type_three = LicenceType.create(allowed_vehicles: "Mototaxi", category: "A3", service_type: "Publico")

licence_one = Licence.create(description: "Licencia tipo 1", licence_type_id: licence_type_one[:id])
licence_two = Licence.create(description: "Licencia tipo 2", licence_type_id: licence_type_two[:id])
licence_three = Licence.create(description: "Licencia tipo 3", licence_type_id: licence_type_three[:id])

vehicle_category_one = VehicleCategory.create(description: "Automovil", hourly_rate: 5000, licence_id: licence_two[:id])
vehicle_category_two = VehicleCategory.create(description: "Motocicleta", hourly_rate: 5000, licence_id: licence_one[:id])
vehicle_category_three = VehicleCategory.create(description: "Mototriciclo", hourly_rate: 5000, licence_id: licence_one[:id])
vehicle_category_four = VehicleCategory.create(description: "Buseta", hourly_rate: 5000, licence_id: licence_three[:id])

vehicle_one = Vehicle.create(plate: "AAA-000", brand: "Ferrari", displacement: "150 cilindraje", name: "volvo", model_year: "2018", vehicle_category_id: vehicle_category_one[:id])
vehicle_two = Vehicle.create(plate: "BBB-000", brand: "Suzuki", displacement: "150 cilindraje", name: "ax-4", model_year: "2012", vehicle_category_id: vehicle_category_two[:id])
vehicle_three = Vehicle.create(plate: "CCC-000", brand: "Mazda", displacement: "150 cilindraje", name: "Trasan", model_year: "2018", vehicle_category_id: vehicle_category_four[:id])

#Person.create(name: "Cristian Leonardo", last_name: "Peñaranda Mora", address: "Av 2", phone_number: "3208597898", id_number: "1090")

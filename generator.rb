require 'faker'
require 'csv'
require 'active_support/time'

CSV.open('file.csv', 'wb') do |csv|
  csv << [
    'Nombre y Apellidos',
    'Correo electrónico',
    'Empresa',
    'Puesto',
    'Profesión',
    'Fecha de ingreso',
    'Fecha de nacimiento',
    'Película favorita',
    'Instrumento músical',
    'Teléfono',
    'Celular',
    'Pokemon',
    'Super héroe',
    'Universidad',
    'Automóvil',
    'Placa',
    'Carné'
  ]

10000.times do
    record = []
    record.push Faker::Name.name
    record.push Faker::Internet.email
    record.push Faker::Company.name
    record.push Faker::Job.title
    record.push Faker::Company.profession
    record.push Faker::Date.between(2.year.ago, Date.today)
    record.push Faker::Date.between(14600.days.ago, 6570.days.ago)
    record.push Faker::Movie.quote
    record.push Faker::Music.instrument
    record.push Faker::PhoneNumber.phone_number
    record.push Faker::PhoneNumber.cell_phone
    record.push Faker::Pokemon.name
    record.push Faker::Superhero.name
    record.push Faker::University.name
    record.push Faker::Vehicle.manufacture
    record.push Faker::Vehicle.vin
    record.push Faker::Number.number(10)
    csv << record
  end
end

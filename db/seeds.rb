# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Creating flats..."
flats = [
  { name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 70,
  number_of_guests: 1 },
  { name: 'Light & Spacious Garden Flat London 2',
  address: '10 Clifton Gardens London W9 1DT 2',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory 2',
  price_per_night: 75,
  number_of_guests: 2 },
  { name: 'Light & Spacious Garden Flat London 3',
  address: '10 Clifton Gardens London W9 1DT 3',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory 3',
  price_per_night: 80,
  number_of_guests: 3 },
  { name: 'Light & Spacious Garden Flat London 4',
  address: '10 Clifton Gardens London W9 1DT 4',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory 4',
  price_per_night: 85,
  number_of_guests: 4 },
]

flats.each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"

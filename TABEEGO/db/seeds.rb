# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

# Areaデータの読み込み
CSV.foreach('db/area.csv') do |row|
    Area.create(:name => row[0], :name_jp => row[1])
end

# Countryデータの読み込み
CSV.foreach('db/country.csv') do |row|
  Country.create(:name => row[0], :name_jp => row[1], :area_id => row[2])
end

# Cityデータの読み込み
CSV.foreach('db/city.csv') do |row|
    City.create(:name => row[0], :name_jp => row[1], :country_id => row[2])
  end
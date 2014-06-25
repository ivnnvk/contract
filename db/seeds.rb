# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Employee.create("user_name"=>"pzachar", "name"=>"Pavel Zachar", "hour_rate"=>500)
Employee.create("user_name"=>"jplacha", "name"=>"Jana Plachá", "hour_rate"=>500)
Source.create("description"=>"Ford\r\n1S1 7568", "unit"=>"km", "unit_price"=>4.2, "source_type_id"=>1)
Source.create("description"=>"Fabia\r\n1ST 2043", "unit"=>"km", "unit_price"=>4.2, "source_type_id"=>1)
Source.create("description"=>"", "unit"=>"ks", "unit_price"=>150, "source_type_id"=>2)
Source.create("description"=>"nastřelovací hřebíky", "unit"=>"kg", "unit_price"=>160, "source_type_id"=>3)
SourceType.create("name"=>"auto")
SourceType.create("name"=>"mezník")
SourceType.create("name"=>"ostatní")
Customer.create("name"=>"Hooktes", "place"=>"Krákorova 123\r\nMladá Vožice", "representant"=>"Pavel Hujer", "phone"=>"725232737")

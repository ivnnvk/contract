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
Township.create("name"=>"Kolín")
CadastralOffice.create("name"=>"Kolín")
OrderWay.create("name"=>"telefonicky")
OrderWay.create("name"=>"písemně")
OrderWay.create("name"=>"ústně")
OrderType.create("name"=>"průběžná")
OrderType.create("name"=>"jednorázová")
OrderType.create("name"=>"akce")
HandoverWay.create("name"=>"osobně u nás")
HandoverWay.create("name"=>"dobírkou na adresu")
HandoverWay.create("name"=>"poštou na adresu")
HandoverWay.create("name"=>"my dodáme kam")
HandoverWay.create("name"=>"elektronicky - email")
PriceCreation.create("name"=>"výpočet")
PriceCreation.create("name"=>"dle obvyklého ceníku")
PriceCreation.create("name"=>"nedomluvena")
PriceCreation.create("name"=>"bude upřesněma - kdy a jak")
Contract.create("contract_number"=>"00209087-91/2014", "record_number"=>"00177563", "cadastral_territory"=>"122", 
"regarding_plat_numbers"=>"256/2, 266/8", "acceptance_date"=>"Sun, 01 Jun 2014 00:00:00 UTC +00:00", 
"fulfilment_term"=>"Tue, 15 Jul 2014 00:00:00 UTC +00:00", "contract_description"=>"Zaměřit barák\r\na taky pozemek", 
"order_number"=>nil, "ordered_by"=>"Plachá", "order_phone"=>"123456798", 
"bend_date"=>"Tue, 10 Jun 2014 00:00:00 UTC +00:00", "make_out_date"=>"Fri, 20 Jun 2014 00:00:00 UTC +00:00", 
"check_date"=>"Sun, 22 Jun 2014 00:00:00 UTC +00:00", "unfulfill_reason"=>"", 
"sketch_number"=>"21254", "screened_date"=>"Wed, 25 Jun 2014 00:00:00 UTC +00:00", 
"handover_date"=>"Thu, 26 Jun 2014 00:00:00 UTC +00:00", 
"deliver_address"=>"Kopín\r\nKolínova 265", "agreed_price"=>15255, 
"price_creation_specification"=>"", "information_from_CO_ect"=>"na katastru to zaevidovali", 
"invoicing_foundations"=>"fakturovat co nejdříve", "other_important_particulars"=>"", 
"customer_id"=>1, "cadastral_office_id"=>1, "township_id"=>1, "responsible_id"=>nil, 
"bend_id"=>2, "drawed_up_id"=>1, "checked_id"=>1, "screened_id"=>1, "order_way_id"=>2, 
"order_type_id"=>2, "handover_way_id"=>2, "price_creation_id"=>1)

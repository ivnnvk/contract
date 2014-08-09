# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Employee.create("user_name"=>"pzachar", "name"=>"Pavel Zachar", "hour_rate"=>500.0)
Employee.create("user_name"=>"jplacha", "name"=>"Jana Plachá", "hour_rate"=>500.0)
Source.create("description"=>"Ford\r\n1S1 7568", "unit"=>"km", "source_type_id"=>1, "unit_price"=>4.2)
Source.create("description"=>"Fabia\r\n1ST 2043", "unit"=>"km", "source_type_id"=>1, "unit_price"=>4.2)
Source.create("description"=>"", "unit"=>"ks", "source_type_id"=>2, "unit_price"=>150.0)
Source.create("description"=>"nastřelovací hřebíky", "unit"=>"kg", "source_type_id"=>3, "unit_price"=>160.0)
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
PriceCreation.create("name"=>"bude upřesněna - kdy a jak")
Contract.create("contract_number"=>"00209087-91/2014", "record_number"=>"00177563", "cadastral_territory"=>"122", "regarding_plat_numbers"=>"256/2, 266/8", "contract_description"=>"Zaměřit barák\r\na taky pozemek", "order_number"=>"121", "ordered_by"=>"Plachá", "order_phone"=>"123456798", "unfulfill_reason"=>"", "sketch_number"=>"21254", "deliver_address"=>"Kolín\r\nKolínova 265", "price_creation_specification"=>"", "information_from_CO_ect"=>"na katastru to zaevidovali", "invoicing_foundations"=>"fakturovat co nejdříve", "other_important_particulars"=>"", "customer_id"=>1, "cadastral_office_id"=>1, "township_id"=>1, "responsible_id"=>1, "bend_id"=>2, "drawed_up_id"=>1, "checked_id"=>1, "screened_id"=>1, "order_way_id"=>2, "order_type_id"=>2, "handover_way_id"=>2, "price_creation_id"=>1, "agreed_price"=>15255.0, "acceptance_date"=>"2014-06-01", "fulfilment_term"=>"2014-07-15", "bend_date"=>"2014-06-10", "make_out_date"=>"2014-06-20", "check_date"=>"2014-06-22", "screened_date"=>"2014-06-25", "handover_date"=>"2014-06-26")
Invoice.create("number"=>"1365/14", "contract_id"=>1, "amount"=>15255.0, "issue_date"=>"2014-06-30", "due_date"=>"2014-07-15")
WorkDiary.create("doing"=>"vyměřování a zaměřování", "employee_id"=>1, "contract_id"=>1, "from"=>"2014-06-30 10:00:00 +0200", "to"=>"2014-06-30 14:00:00 +0200")
UsageSource.create("amount"=>nil, "source_id"=>2, "contract_id"=>1, "employee_id"=>1, "unit_number"=>70.0, "from"=>"2014-06-30 10:00:00 +0200", "to"=>"2014-06-30 14:00:00 +0200")
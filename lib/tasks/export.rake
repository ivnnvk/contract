namespace :export do
  desc "Prints Employee, Source, SourceType, Customer in a seeds.rb way."
  task :seeds_format => :environment do
    Employee.order(:id).all.each do |r|
      print "Employee.create(#{r.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id','hour_rate'].include?(key)}.to_s.gsub(/[{}]/,'')}",
       ", \"hour_rate\"=>", r.hour_rate, ")\n"
    end
    Source.order(:id).all.each do |r|
      print "Source.create(#{r.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id','unit_price'].include?(key)}.to_s.gsub(/[{}]/,'')}",
       ", \"unit_price\"=>", r.unit_price, ")\n"
    end
    SourceType.order(:id).all.each do |r|
      puts "SourceType.create(#{r.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    Customer.order(:id).all.each do |r|
      puts "Customer.create(#{r.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    Township.order(:id).all.each do |r|
      puts "Township.create(#{r.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    CadastralOffice.order(:id).all.each do |r|
      puts "CadastralOffice.create(#{r.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    OrderWay.order(:id).all.each do |r|
      puts "OrderWay.create(#{r.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    OrderType.order(:id).all.each do |r|
      puts "OrderType.create(#{r.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    HandoverWay.order(:id).all.each do |r|
      puts "HandoverWay.create(#{r.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    PriceCreation.order(:id).all.each do |r|
      puts "PriceCreation.create(#{r.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    Contract.order(:id).all.each do |r|
      print "Contract.create(#{r.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id','agreed_price','acceptance_date','fulfilment_term','bend_date','make_out_date','check_date','screened_date','handover_date'].include?(key)}.to_s.gsub(/[{}]/,'')}",
       ", \"agreed_price\"=>", r.agreed_price, ", \"acceptance_date\"=>\"", r.acceptance_date, "\", \"fulfilment_term\"=>\"", r.fulfilment_term, 
       "\", \"bend_date\"=>\"", r.bend_date, "\", \"make_out_date\"=>\"", r.make_out_date, "\", \"check_date\"=>\"", r.check_date,
       "\", \"screened_date\"=>\"", r.screened_date, "\", \"handover_date\"=>\"", r.handover_date, "\")\n"
    end
    Invoice.order(:id).all.each do |r|
      print "Invoice.create(#{r.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id','amount','issue_date','due_date'].include?(key)}.to_s.gsub(/[{}]/,'')}",
       ", \"amount\"=>", r.amount, ", \"issue_date\"=>\"", r.issue_date, "\", \"due_date\"=>\"", r.due_date, "\")\n"
    end
    WorkDiary.order(:id).all.each do |r|
      print "WorkDiary.create(#{r.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id','from','to'].include?(key)}.to_s.gsub(/[{}]/,'')}",
       ", \"from\"=>\"", r.from, "\", \"to\"=>\"", r.to, "\")\n"
    end
    UsageSource.order(:id).all.each do |r|
      print "UsageSource.create(#{r.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id','unit_number','from','to'].include?(key)}.to_s.gsub(/[{}]/,'')}",
       ", \"unit_number\"=>", r.unit_number, ", \"from\"=>\"", r.from, "\", \"to\"=>\"", r.to, "\")\n"
    end
  end
end
namespace :export do
  desc "Prints Employee, Source, SourceType, Customer in a seeds.rb way."
  task :seeds_format => :environment do
    Employee.order(:id).all.each do |r|
      puts "Employee.create(#{r.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    Source.order(:id).all.each do |r|
      puts "Source.create(#{r.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
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
      puts "Contract.create(#{r.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    Invoice.order(:id).all.each do |r|
      puts "Invoice.create(#{r.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    WorkDiary.order(:id).all.each do |r|
      puts "WorkDiary.create(#{r.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    UsageSource.order(:id).all.each do |r|
      puts "UsageSource.create(#{r.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end
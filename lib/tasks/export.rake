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
  end
end
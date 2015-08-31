class Employee < ActiveRecord::Base
  has_many :contracts, foreign_key: "responsible_id"
  has_many :contracts, foreign_key: "bend_1_id"
  has_many :contracts, foreign_key: "bend_2_id"
  has_many :contracts, foreign_key: "drawed_up_id"
  has_many :contracts, foreign_key: "checked_id"
  has_many :contracts, foreign_key: "screened_id"
  has_many :work_diary
  has_many :usage_sources
end

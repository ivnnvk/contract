class SourceType < ActiveRecord::Base
  has_many :sources

  accepts_nested_attributes_for :sources
end

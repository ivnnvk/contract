class OrderType < ActiveRecord::Base
  has_many :contracts
end

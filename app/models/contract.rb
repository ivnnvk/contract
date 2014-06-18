class Contract < ActiveRecord::Base
	extend Enumerize
	enumerize :order_way, in: [:telefonicky, :písemně, :ústně], default: :telefonicky

	belongs_to :customer
end

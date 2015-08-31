class Contract < ActiveRecord::Base
  belongs_to :customer
  belongs_to :cadastral_office
  belongs_to :township
  belongs_to :responsible
  belongs_to :bend_1
  belongs_to :bend_2
  belongs_to :drawed_up
  belongs_to :checked
  belongs_to :screened
  belongs_to :order_way
  belongs_to :order_type
  belongs_to :handover_way
  belongs_to :price_creation
end

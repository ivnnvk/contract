class UsageSource < ActiveRecord::Base
  belongs_to :source
  belongs_to :contract
end

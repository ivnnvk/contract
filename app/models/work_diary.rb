class WorkDiary < ActiveRecord::Base
  belongs_to :employee
  belongs_to :contract
end

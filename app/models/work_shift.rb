class WorkShift < ApplicationRecord
  belongs_to :employee
  belongs_to :rate
  belongs_to :location
end

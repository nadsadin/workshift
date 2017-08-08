class EmployeeRate < ApplicationRecord
  belongs_to :employee
  belongs_to :rate
end
